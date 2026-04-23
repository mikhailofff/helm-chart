{{- define "my-chart.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "my-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "my-chart.fullname" . }}
{{- end }} 

{{- define "my-chart.labels" -}}
{{ include "my-chart.selectorLabels" . -}}
{{- end }}
