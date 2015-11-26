<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>alert_mail</fullName>
        <description>alert mail</description>
        <protected>false</protected>
        <recipients>
            <recipient>mansi@gosavi.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/alert</template>
    </alerts>
    <fieldUpdates>
        <fullName>End_day</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>End day</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>End day</fullName>
        <actions>
            <name>End_day</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>End_Date__c  =  TODAY()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>alert</fullName>
        <actions>
            <name>alert_mail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(TODAY() - End_Date__c)=5</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
