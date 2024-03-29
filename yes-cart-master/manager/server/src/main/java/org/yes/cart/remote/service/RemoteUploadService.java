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

package org.yes.cart.remote.service;

import java.io.IOException;

/**
 *
 * Service responsible to upload file.
 *
 * Igor Azarny iazarny@yahoo.com
 * Date: 10/12/11
 * Time: 18:08
 */
public interface RemoteUploadService {

    /**
     * Store given bytes as file.
     * @param bytes file body.
     * @param fileName file name
     * @return file name, including path, on server side.
     */
    String upload(byte [] bytes, String fileName) throws IOException;

}
