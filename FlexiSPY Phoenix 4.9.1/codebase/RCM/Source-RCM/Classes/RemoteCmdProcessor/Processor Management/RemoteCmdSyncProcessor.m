/**
 - Project name :  RemoteCommandMager Component
 - Class name   :  RemoteCmdSyncProcessor
 - Version      :  1.0  
 - Purpose      :  For RemoteCommandMager Component
 - Copy right   :  21/11/2011, Prasad M.B, Vervata Co., Ltd. All rights reserved.
*/

#import "RemoteCmdSyncProcessor.h"

@implementation RemoteCmdSyncProcessor


/**
 - Method name: initWithRemoteCommandData
 - Purpose:This method is used to initialize the RemoteCmdSyncProcessor class
 - Argument list and description: aRemoteCmdData (RemoteCmdData)
 - Return description: No return type
*/


-(id) initWithRemoteCommandData: (RemoteCmdData *) aRemoteCmdData {
	if ((self = [super init])) {
		mRemoteCmdData = aRemoteCmdData;
		[mRemoteCmdData retain];
	}
	return self;
}

#pragma mark RemoteCmdProcessor Methods

/**
 - Method name: doProcessingCommand
 - Purpose:This method is used to process the LocationOnDemandProcessor
 - Argument list and description: 
 - Return description: No return type
 */

- (void) doProcessingCommand {
	DLog (@"doProcessingCommand....>");
}

/**
 - Method name: processingType
 - Purpose:This method is used to get the processing type
 - Argument list and description: No Return Type
 - Return description: RemoteCmdProcessingType
*/

- (RemoteCmdProcessingType) processingType {
	return kProcessingTypeSync;
}

/**
 - Method name: remoteCmdCode
 - Purpose:This method is used to get the remoteCmdCode 
 - Argument list and description: No Argument
 - Return description: mRemoteCmdCode (NSString *)
*/


- (NSString *) remoteCmdCode {
	return [mRemoteCmdData mRemoteCmdCode];
}

/**
 - Method name: remoteCmdUID
 - Purpose:This method is used to get the remoteCmdUID 
 - Argument list and description: No Argument
 - Return description: mRemoteCmdUID (NSUInteger)
*/

- (NSUInteger) remoteCmdUID {
	return [mRemoteCmdData mRemoteCmdUID];
}


/**
 - Method name: remoteCmdData
 - Purpose:This method is used to get the remoteCmdData 
 - Argument list and description: No Argument
 - Return description: mRemoteCmdData (RemoteCmdData *)
*/


- (RemoteCmdData *) remoteCmdData {
	return mRemoteCmdData;
}

/**
 - Method name: recipientNumber
 - Purpose:This method is used to get the recipientNumber 
 - Argument list and description: No Return Type
 - Return description: mSenderNumber (NSString *)
*/

- (NSString *) recipientNumber {
	return [mRemoteCmdData mSenderNumber];
}


- (void) dealloc {
	[mRemoteCmdData release];
	[super dealloc];
}


@end
