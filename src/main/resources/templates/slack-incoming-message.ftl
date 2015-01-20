<#assign message="<${executionData.href}|Execution #${executionData.id}> of job <${executionData.job.href}|${executionData.job.name}> has ">
<#if trigger == "start">
    <#assign state="started">
<#elseif trigger == "failure">
    <#assign state="failed">
<#else>
    <#assign state="succeeded">
</#if>
{"text":"${state}: ${message}"}
