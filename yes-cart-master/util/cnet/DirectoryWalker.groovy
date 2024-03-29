/*
 * Copyright 2009 Denys Pavlov, Igor Azarnyi
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */





package org.yes.cart.cnetxml;

import java.io.File
import org.xml.sax.SAXParseException;

public class DirectoryWalker {


  File baseDir;


  public Category buildModel(final String dir) {

    baseDir = new File(dir);

    Category root = new Category();

    collectData(root, baseDir);

    println root;

    return root;

  }

  private void collectData(final Category root, final File currentDir) {
    for (File file: currentDir.listFiles()) {
      if (file.isDirectory()) {
        try {
          def categoryId = Integer.valueOf(file.getName());
          Category cat = new Category(categoryId);
          cat.setParentId(root.getParentId());
          root.getSubCategories().add(cat);
          collectData(cat, file);
          File products = new File(file.getCanonicalPath() + File.separator + cat.getProdXml());
          def CNETResponse = new XmlSlurper().parse(products);
          cat.setName(CNETResponse.CategoryInfo.Category.Title.asType(String.class));
          CNETResponse.TechProducts.TechProduct.each {
            Product product = new Product();
            product.setId(it.@id.asType(String.class));
            product.setName(it.Name.asType(String.class));
            product.setBrand(it.Manufacturer.Name.asType(String.class));
            product.setSku(it.SKU.asType(String.class));
            product.setSpecs(it.Specs.asType(String.class));
            String price = it.LowOfferPrice.asType(String.class);
            if (price == null || price.length() == 0) {
              product.setPrice(it.HighOfferPrice.asType(String.class));
            } else {
              product.setPrice(price);
            }
            collectProductAttributes(product, file.getCanonicalPath());
            cat.getProducts().add(product);
          };

          String csvFileName = file.getCanonicalPath() + File.separator + "product_entity-" + cat.getId() + ".csv";

          new File(csvFileName).withWriter {  out ->
            cat.getProducts().each { out.writeLine(it.toCsvString(cat)) }
          };


        } catch (NumberFormatException e) {
        }
      }
    }
  }

  private void collectProductAttributes(final Product product, final String folderPath) {
    def fileName = folderPath + File.separator + product.getAttributeFileName();
    try {
      def html = new File(fileName).text;

      html = html.replace("& ", "&amp;") //some cleanup

      try {
        def div = new XmlSlurper(false, false).parseText(html);
        println product;
        div.ul.li.each {

          StringPair pair = new StringPair(
                  it.strong.asType(String.class).trim(),
                  it.span.asType(String.class).trim()
          );
          println "\t" + pair;
          product.getAttrValue().add(pair);
        }
      } catch (SAXParseException e) {
        println "Can not extract data from " + fileName + " , because of " + e.getMessage();
      }

    } catch (FileNotFoundException fnfe) {
      println "File not found " + fileName;

    }
  }


}
