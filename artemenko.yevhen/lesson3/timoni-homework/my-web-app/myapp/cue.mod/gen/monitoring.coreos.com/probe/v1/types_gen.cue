// Code generated by timoni. DO NOT EDIT.

//timoni:generate timoni mod vendor crd -f https://github.com/prometheus-operator/prometheus-operator/releases/download/v0.68.0/stripped-down-crds.yaml

package v1

import "strings"

#Probe: {
	apiVersion: "monitoring.coreos.com/v1"
	kind:       "Probe"
	metadata!: {
		name!: strings.MaxRunes(253) & strings.MinRunes(1) & {
			string
		}
		namespace!: strings.MaxRunes(63) & strings.MinRunes(1) & {
			string
		}
		labels?: {
			[string]: string
		}
		annotations?: {
			[string]: string
		}
	}
	spec!: #ProbeSpec
}
#ProbeSpec: {
	authorization?: {
		credentials?: {
			key!:      string
			name?:     string
			optional?: bool
		}
		type?: string
	}
	basicAuth?: {
		password?: {
			key!:      string
			name?:     string
			optional?: bool
		}
		username?: {
			key!:      string
			name?:     string
			optional?: bool
		}
	}
	bearerTokenSecret?: {
		key!:      string
		name?:     string
		optional?: bool
	}
	interval?:              =~"^(0|(([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?)$"
	jobName?:               string
	keepDroppedTargets?:    int64
	labelLimit?:            int64
	labelNameLengthLimit?:  int64
	labelValueLengthLimit?: int64
	metricRelabelings?: [...{
		action?:      "replace" | "Replace" | "keep" | "Keep" | "drop" | "Drop" | "hashmod" | "HashMod" | "labelmap" | "LabelMap" | "labeldrop" | "LabelDrop" | "labelkeep" | "LabelKeep" | "lowercase" | "Lowercase" | "uppercase" | "Uppercase" | "keepequal" | "KeepEqual" | "dropequal" | "DropEqual"
		modulus?:     int64
		regex?:       string
		replacement?: string
		separator?:   string
		sourceLabels?: [...=~"^[a-zA-Z_][a-zA-Z0-9_]*$"]
		targetLabel?: string
	}]
	module?: string
	oauth2?: {
		clientId!: {
			configMap?: {
				key!:      string
				name?:     string
				optional?: bool
			}
			secret?: {
				key!:      string
				name?:     string
				optional?: bool
			}
		}
		clientSecret!: {
			key!:      string
			name?:     string
			optional?: bool
		}
		endpointParams?: close({
			[string]: string
		})
		scopes?: [...string]
		tokenUrl!: strings.MinRunes(1)
	}
	prober?: {
		path?:     string
		proxyUrl?: string
		scheme?:   "http" | "https"
		url!:      string
	}
	sampleLimit?:   int64
	scrapeTimeout?: =~"^(0|(([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?)$"
	targetLimit?:   int64
	targets?: {
		ingress?: {
			namespaceSelector?: {
				any?: bool
				matchNames?: [...string]
			}
			relabelingConfigs?: [...{
				action?:      "replace" | "Replace" | "keep" | "Keep" | "drop" | "Drop" | "hashmod" | "HashMod" | "labelmap" | "LabelMap" | "labeldrop" | "LabelDrop" | "labelkeep" | "LabelKeep" | "lowercase" | "Lowercase" | "uppercase" | "Uppercase" | "keepequal" | "KeepEqual" | "dropequal" | "DropEqual"
				modulus?:     int64
				regex?:       string
				replacement?: string
				separator?:   string
				sourceLabels?: [...=~"^[a-zA-Z_][a-zA-Z0-9_]*$"]
				targetLabel?: string
			}]
			selector?: {
				matchExpressions?: [...{
					key!:      string
					operator!: string
					values?: [...string]
				}]
				matchLabels?: close({
					[string]: string
				})
			}
		}
		staticConfig?: {
			labels?: close({
				[string]: string
			})
			relabelingConfigs?: [...{
				action?:      "replace" | "Replace" | "keep" | "Keep" | "drop" | "Drop" | "hashmod" | "HashMod" | "labelmap" | "LabelMap" | "labeldrop" | "LabelDrop" | "labelkeep" | "LabelKeep" | "lowercase" | "Lowercase" | "uppercase" | "Uppercase" | "keepequal" | "KeepEqual" | "dropequal" | "DropEqual"
				modulus?:     int64
				regex?:       string
				replacement?: string
				separator?:   string
				sourceLabels?: [...=~"^[a-zA-Z_][a-zA-Z0-9_]*$"]
				targetLabel?: string
			}]
			static?: [...string]
		}
	}
	tlsConfig?: {
		ca?: {
			configMap?: {
				key!:      string
				name?:     string
				optional?: bool
			}
			secret?: {
				key!:      string
				name?:     string
				optional?: bool
			}
		}
		cert?: {
			configMap?: {
				key!:      string
				name?:     string
				optional?: bool
			}
			secret?: {
				key!:      string
				name?:     string
				optional?: bool
			}
		}
		insecureSkipVerify?: bool
		keySecret?: {
			key!:      string
			name?:     string
			optional?: bool
		}
		serverName?: string
	}
}
