#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
  when "smartos"
    default['nodejs']['install_method'] = 'package'
  else
    default['nodejs']['install_method'] = 'source'
end

default['nodejs']['version'] = '0.10.21'
default['nodejs']['checksum'] = '7c125bf22c1756064f2a68310d4822f77c8134ce178b2faa6155671a8124140d'
default['nodejs']['checksum_linux_x64'] = '2791efef0a1e9a9231b937e55e5b783146e23291bca59a65092f8340eb7c87c8'
default['nodejs']['checksum_linux_x86'] = 'c0ed641961a5c5a4602b1316c3d3ed12b3ac330cc18abf3fb980f0b897b5b96b'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.3.11'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
default['nodejs']['check_sha'] = true

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
