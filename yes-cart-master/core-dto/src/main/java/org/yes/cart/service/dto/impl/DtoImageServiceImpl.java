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

package org.yes.cart.service.dto.impl;

import com.inspiresoftware.lib.dto.geda.adapter.repository.AdaptersRepository;
import org.yes.cart.domain.dto.SeoImageDTO;
import org.yes.cart.domain.dto.factory.DtoFactory;
import org.yes.cart.domain.dto.impl.SeoImageDTOImpl;
import org.yes.cart.domain.entity.SeoImage;
import org.yes.cart.exception.UnableToCreateInstanceException;
import org.yes.cart.exception.UnmappedInterfaceException;
import org.yes.cart.service.domain.GenericService;
import org.yes.cart.service.domain.ImageService;
import org.yes.cart.service.dto.DtoImageService;

import java.io.IOException;

/**
* User: Igor Azarny iazarny@yahoo.com
 * Date: 09-May-2011
 * Time: 14:12:54
 */
public class DtoImageServiceImpl
        extends AbstractDtoServiceImpl<SeoImageDTO, SeoImageDTOImpl, SeoImage>
        implements DtoImageService {

    private final ImageService imageService;

    /**
     * Construct base remote service.
     *
     * @param dtoFactory               {@link org.yes.cart.domain.dto.factory.DtoFactory}
     * @param seoImageGenericService                  {@link org.yes.cart.service.domain.GenericService}
     * @param adaptersRepository {@link com.inspiresoftware.lib.dto.geda.adapter.repository.AdaptersRepository}
     */
    public DtoImageServiceImpl(final DtoFactory dtoFactory,
                               final GenericService<SeoImage> seoImageGenericService,
                               final AdaptersRepository adaptersRepository) {
        super(dtoFactory, seoImageGenericService, adaptersRepository);
        imageService = (ImageService) seoImageGenericService;
    }

    /** {@inheritDoc} */
    public String addImageToRepository(final String fullFileName,
                                        final String code,
                                        final byte[] imgBody,
                                        final String storagePrefix,
                                        final String pathToRepository) throws IOException {
        return imageService.addImageToRepository(fullFileName, code, imgBody, storagePrefix, pathToRepository);
    }

    /** {@inheritDoc} */
    public byte[] getImageAsByteArray(final String fileName, final String code, final String storagePrefix, final String pathToRepository) throws IOException {
        return imageService.imageToByteArray(fileName, code, storagePrefix, pathToRepository);
    }

    /** {@inheritDoc} */
    public SeoImageDTO getSeoImage(final String imageFileName) throws UnmappedInterfaceException, UnableToCreateInstanceException {
        final SeoImage seoImage = imageService.getSeoImage(imageFileName);
        if (seoImage != null) {
            final SeoImageDTO seoImageDTO = getNew();
            assembler.assembleDto(seoImageDTO, seoImage, getAdaptersRepository(), dtoFactory);
            return seoImageDTO;
        }
        return null;
    }


    /** {@inheritDoc} */
    public Class<SeoImageDTO> getDtoIFace() {
        return SeoImageDTO.class;
    }

    /** {@inheritDoc} */
    public Class<SeoImageDTOImpl> getDtoImpl() {
        return SeoImageDTOImpl.class;
    }

    /** {@inheritDoc} */
    public Class<SeoImage> getEntityIFace() {
        return SeoImage.class;
    }

}
