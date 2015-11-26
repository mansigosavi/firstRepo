<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Employee_deactivated</fullName>
        <description>Employee deactivated</description>
        <protected>false</protected>
        <recipients>
            <recipient>HR_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>mansi@gosavi.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTSelfServiceNewCommentNotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>emp_inactive1</fullName>
        <description>emp inactive</description>
        <protected>false</protected>
        <recipients>
            <recipient>HR_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>mansi@gosavi.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/try</template>
    </alerts>
    <fieldUpdates>
        <fullName>Current_emp</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Current emp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Current emp</fullName>
        <actions>
            <name>Current_emp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>EMPLOYEES__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify Manager</fullName>
        <actions>
            <name>emp_inactive1</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>EMPLOYEES__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
