<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png" width=350/>
	</p>
  <h3>orb-base-packages</h3>
  <h5>installation of twdps/circleci-base-image packages on ubuntu machine executor</h5>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/orb-1password-connect"><img src="https://circleci.com/gh/twplatformlabs/orb-1password-connect.svg?style=shield"></a> <a href="https://badges.circleci.com/orbs/twdps/onepassword.svg"><img src="https://badges.circleci.com/orbs/twdps/onepassword.svg"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
</div>
<br />

We recommend organizations maintain a base-image to be used for building all other circleci executors. The purpose of this image is to assure both that executors have the CircleCI required packages to successfully run as an executor, that the base iamge is secure and up to date, and that the generally required exeterprise packages are available (chiefly secrets access or other similar packages necessary for all executors based on organizational use or practices).  

Presently for the twdps/circleci-base-image executor this includes:  
- [1password cli](https://app-updates.agilebits.com/product_history/CLI2)
- [teller](https://github.com/tellerops/teller)
- Hashi [Vault](https://developer.hashicorp.com/vault/install?ajs_aid=c30948a0-fd06-4c47-a0c5-aa487b178c5f&product_intent=vault)
- Honeycomb [buildevents](https://github.com/honeycombio/buildevents)

See [orb registry](https://circleci.com/developer/orbs/orb/twdps/onepassword) for detailed usage examples.