> rs.status()
{
	"info" : "run rs.initiate(...) if not yet done for the set",
	"ok" : 0,
	"errmsg" : "no replset config has been received",
	"code" : 94
}
> rs.initiate()
{
	"info2" : "no configuration explicitly specified -- making one",
	"me" : "bigdata6:27026",
	"ok" : 1
}
rs0:PRIMARY> rs.conf()
{
	"_id" : "rs0",
	"version" : 1,
	"members" : [
		{
			"_id" : 0,
			"host" : "bigdata6:27026",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : 0,
			"votes" : 1
		}
	],
	"settings" : {
		"chainingAllowed" : true,
		"heartbeatTimeoutSecs" : 10,
		"getLastErrorModes" : {
			
		},
		"getLastErrorDefaults" : {
			"w" : 1,
			"wtimeout" : 0
		}
	}
}
rs0:PRIMARY> rs.add("bigdata4:27024")
{ "ok" : 1 }
rs0:PRIMARY> rs.add("bigdata5:27025")
{ "ok" : 1 }
rs0:PRIMARY> rs.add("bigdata6:27026")
{
	"ok" : 0,
	"errmsg" : "Found two member configurations with same host field, members.0.host == members.3.host == bigdata6:27026",
	"code" : 103
}
rs0:PRIMARY> rs.conf()
{
	"_id" : "rs0",
	"version" : 3,
	"members" : [
		{
			"_id" : 0,
			"host" : "bigdata6:27026",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : 0,
			"votes" : 1
		},
		{
			"_id" : 1,
			"host" : "bigdata4:27024",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : 0,
			"votes" : 1
		},
		{
			"_id" : 2,
			"host" : "bigdata5:27025",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : 0,
			"votes" : 1
		}
	],
	"settings" : {
		"chainingAllowed" : true,
		"heartbeatTimeoutSecs" : 10,
		"getLastErrorModes" : {
			
		},
		"getLastErrorDefaults" : {
			"w" : 1,
			"wtimeout" : 0
		}
	}
}
rs0:PRIMARY> rs.status()
{
	"set" : "rs0",
	"date" : ISODate("2015-11-18T04:55:05.683Z"),
	"myState" : 1,
	"members" : [
		{
			"_id" : 0,
			"name" : "bigdata6:27026",
			"health" : 1,
			"state" : 1,
			"stateStr" : "PRIMARY",
			"uptime" : 2888,
			"optime" : Timestamp(1447822465, 1),
			"optimeDate" : ISODate("2015-11-18T04:54:25Z"),
			"electionTime" : Timestamp(1447822412, 2),
			"electionDate" : ISODate("2015-11-18T04:53:32Z"),
			"configVersion" : 3,
			"self" : true
		},
		{
			"_id" : 1,
			"name" : "bigdata4:27024",
			"health" : 1,
			"state" : 2,
			"stateStr" : "SECONDARY",
			"uptime" : 47,
			"optime" : Timestamp(1447822465, 1),
			"optimeDate" : ISODate("2015-11-18T04:54:25Z"),
			"lastHeartbeat" : ISODate("2015-11-18T04:55:03.993Z"),
			"lastHeartbeatRecv" : ISODate("2015-11-18T04:55:04.440Z"),
			"pingMs" : 0,
			"syncingTo" : "bigdata6:27026",
			"configVersion" : 3
		},
		{
			"_id" : 2,
			"name" : "bigdata5:27025",
			"health" : 1,
			"state" : 2,
			"stateStr" : "SECONDARY",
			"uptime" : 39,
			"optime" : Timestamp(1447822465, 1),
			"optimeDate" : ISODate("2015-11-18T04:54:25Z"),
			"lastHeartbeat" : ISODate("2015-11-18T04:55:03.993Z"),
			"lastHeartbeatRecv" : ISODate("2015-11-18T04:55:04.030Z"),
			"pingMs" : 0,
			"lastHeartbeatMessage" : "could not find member to sync from",
			"configVersion" : 3
		}
	],
	"ok" : 1
}
rs0:PRIMARY> 

