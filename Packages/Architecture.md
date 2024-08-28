block-beta
columns 1
	block:AppSDKs
		alamofire
		combine.schedulers
		kingfisher
		swift.clocks
	end
	block:AppSDKs4
		swift.concurrency.extras
		swift.dependencies
		swift.syntax
		xctest.dynamic.overlay
	end
	blockArrowIdT9999<["3rd party SDKs"]>(up)
	App(("APP"))
	blockArrowId1<["Framework"]>(down)
	block:Framework
		DPCommonUI
	end
	blockArrowId2<["Foundation"]>(down)
	block:Foundation
		DPNetworking
		DPCommonAssets
		DPCommonUIUtilities
	end
	blockArrowIdB9999<["3rd Party SDKs"]>(down)
	block:3rd_Party_SDKs
		Kingfisher
		Alamofire
	end

	%% Relations between modules
	DPCommonUI ---> Kingfisher
	DPCommonUI ---> DPCommonAssets

	DPNetworking ---> Alamofire

