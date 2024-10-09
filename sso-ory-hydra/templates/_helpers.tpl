{{/*
Expand the name of the chart, using the release name
*/}}
{{- define "sso-ory-hydra.fullname" -}}
{{- if .Values.fullnameOverride }}
  {{- .Values.fullnameOverride | quote }}
{{- else if .Values.nameOverride }}
  {{- printf "%s-%s" .Values.nameOverride .Release.Name | trunc 63 | trimSuffix "-" | quote }}
{{- else }}
  {{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" | quote }}
{{- end }}
{{- end }}

{{/*
A function that returns the chart name with the release name prepended.
This is typically used for naming Kubernetes resources such as ServiceAccounts, ConfigMaps, and Secrets.
*/}}
{{- define "sso-ory-hydra.name" -}}
{{- if .Values.nameOverride }}
  {{- .Values.nameOverride | quote }}
{{- else }}
  {{- printf "%s-%s" .Release.Name .Chart.Name | quote }}
{{- end }}
{{- end }}

{{/*
A helper to provide the chart version and app version in annotations.
*/}}
{{- define "sso-ory-hydra.chart" -}}
{{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
{{- end }}

{{/*
Helper to determine the namespace of a resource. This will check for the `namespaceOverride`
or otherwise return the release namespace.
*/}}
{{- define "sso-ory-hydra.namespace" -}}
{{- if .Values.namespaceOverride }}
  {{ .Values.namespaceOverride | quote }}
{{- else }}
  {{ .Release.Namespace | quote }}
{{- end }}
{{- end }}

{{/*
Helper to include common labels in Kubernetes objects.
*/}}
{{- define "sso-ory-hydra.labels" -}}
app.kubernetes.io/name: {{ include "sso-ory-hydra.name" . }}
helm.sh/chart: {{ include "sso-ory-hydra.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end }}

{{/*
Helper to add selector labels to Deployments, StatefulSets, etc.
*/}}
{{- define "sso-ory-hydra.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sso-ory-hydra.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}

{{/*
Helper to add standard annotations in resources.
*/}}
{{- define "sso-ory-hydra.annotations" -}}
helm.sh/chart: {{ include "sso-ory-hydra.chart" . }}
{{- end }}
