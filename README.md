<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>orb-base-packages</h1>
  <h3>bundled set of common pipeline job and commands</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/orb-base-packages"><img src="https://circleci.com/gh/twplatformlabs/orb-base-packages.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
</div>
<br />

See [orb registry](https://circleci.com/developer/orbs/orb/twdps/base-packages) for detailed usage examples

Most organizations will have a collection of packages that are broadly used across their executor (or runner) fleet. Generally, pipelines run fastest on pre-configured executors that have all needed packages. But there are situations where this isn't the best choice. What about where a development team needs a different version of a package than the one available on the pre-configured runner? Preconfiguration can fall behind in supporting current release versions. A team may have a unique challenge in adopting the new version of a package with breaking changes. Or, sometimes a particular build can't make effective use of OS virtualization (DinD) and needs to run directly on the CIrcleCI or Github provided VM where these tools aren't available. In both situatiaons, it is useful to have single `install` command (or action) to simplify (and standarize, and make changeble in one location) including install options wherever needed across other shared pipelines.  

Presently, the PSK orb includes:  
- [1password cli](https://app-updates.agilebits.com/product_history/CLI2)
- [Hashi Vault](https://developer.hashicorp.com/vault/install?ajs_aid=c30948a0-fd06-4c47-a0c5-aa487b178c5f&product_intent=vault)
- [Teller](https://github.com/tellerops/teller)
- [Bats](https://github.com/bats-core/bats-core)
- [Cosign](https://github.com/sigstore/cosign)
- [GitHub cli](https://cli.github.com)
- [Grype](https://github.com/anchore/grype)
- [Hadolint](https://github.com/hadolint/hadolint)
- [Oras](https://github.com/oras-project/oras)
- [Snyk](https://github.com/snyk/cli)
- [Syft](https://github.com/anchore/syft)
- [Trivy](https://github.com/aquasecurity/trivy)
