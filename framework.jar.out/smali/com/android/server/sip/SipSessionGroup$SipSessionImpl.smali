.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.super Landroid/net/sip/ISipSession$Stub;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipSessionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    }
.end annotation


# instance fields
.field mAuthenticationRetryCount:I

.field mClientTransaction:Ljavax/sip/ClientTransaction;

.field mDialog:Ljavax/sip/Dialog;

.field mInCall:Z

.field mInviteReceived:Ljavax/sip/RequestEvent;

.field private mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field mPeerProfile:Landroid/net/sip/SipProfile;

.field mPeerSessionDescription:Ljava/lang/String;

.field mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

.field mReinvite:Z

.field mReplaces:Ljava/lang/String;

.field mServerTransaction:Ljavax/sip/ServerTransaction;

.field mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field mState:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 583
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0}, Landroid/net/sip/ISipSession$Stub;-><init>()V

    .line 528
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 529
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 548
    iput-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReinvite:Z

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 585
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    return-void
.end method

.method private cancelSessionTimer()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    .line 1339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1341
    :cond_0
    return-void
.end method

.method private createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 1344
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, realm:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCommandAsync(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 667
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    const-string v2, "SipSessionAsyncCmdThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 679
    return-void
.end method

.method private enableKeepAlive()V
    .locals 5

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 1355
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :goto_1
    return-void

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_0

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, e:Ljavax/sip/SipException;
    const-string v1, "SipSession"

    const-string v2, "keepalive cannot be enabled; ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1359
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_1
.end method

.method private endCallNormally()V
    .locals 1

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1374
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1375
    return-void
.end method

.method private endCallOnBusy()V
    .locals 1

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1384
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 1385
    return-void
.end method

.method private endCallOnError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1379
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1380
    return-void
.end method

.method private endingCall(Ljava/util/EventObject;)Z
    .locals 5
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1307
    const-string v4, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 1308
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1309
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1311
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1312
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_0

    .line 1321
    :cond_0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1322
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1325
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :goto_0
    return v3

    .line 1315
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1325
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1312
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private establishCall(Z)V
    .locals 2
    .parameter "enableKeepAlive"

    .prologue
    .line 1364
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReinvite:Z

    .line 1366
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1367
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->enableKeepAlive()V

    .line 1368
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 1369
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .locals 1

    .prologue
    .line 989
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 1
    .parameter "responseStatusCode"

    .prologue
    .line 1415
    sparse-switch p1, :sswitch_data_0

    .line 1433
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 1434
    const/4 v0, -0x4

    .line 1436
    :goto_0
    return v0

    .line 1422
    :sswitch_0
    const/4 v0, -0x7

    goto :goto_0

    .line 1427
    :sswitch_1
    const/4 v0, -0x6

    goto :goto_0

    .line 1430
    :sswitch_2
    const/4 v0, -0x5

    goto :goto_0

    .line 1436
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 1415
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19e -> :sswitch_1
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_1
        0x1e5 -> :sswitch_1
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 2
    .parameter "exception"

    .prologue
    .line 1442
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, message:Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 1444
    const/16 v1, -0xc

    .line 1448
    :goto_0
    return v1

    .line 1445
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 1446
    const/4 v1, -0x1

    goto :goto_0

    .line 1448
    :cond_1
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private getExpiryTime(Ljavax/sip/message/Response;)I
    .locals 4
    .parameter "response"

    .prologue
    .line 902
    const/4 v2, -0x1

    .line 903
    .local v2, time:I
    const-string v3, "Contact"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContactHeader;

    .line 904
    .local v0, contact:Ljavax/sip/header/ContactHeader;
    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->getExpires()I

    move-result v2

    .line 907
    :cond_0
    const-string v3, "Expires"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 908
    .local v1, expires:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_2

    if-ltz v2, :cond_1

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 909
    :cond_1
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    .line 911
    :cond_2
    if-gtz v2, :cond_3

    .line 912
    const/16 v2, 0xe10

    .line 914
    :cond_3
    const-string v3, "Min-Expires"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    .end local v1           #expires:Ljavax/sip/header/ExpiresHeader;
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 915
    .restart local v1       #expires:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 916
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    .line 921
    :cond_4
    return v2
.end method

.method private getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1021
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1023
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 1026
    :goto_0
    return-object v2

    .line 1024
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1026
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getNonce()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1012
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1014
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 1017
    :goto_0
    return-object v2

    .line 1015
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1017
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getResponseString(I)Ljava/lang/String;
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 1030
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 1031
    .local v0, statusLine:Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 1032
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTransaction()Ljavax/sip/Transaction;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 652
    :goto_0
    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .locals 5
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 954
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 955
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, nonce:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 957
    const/4 v3, -0x2

    const-string/jumbo v4, "server does not provide challenge"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 978
    :goto_0
    return v2

    .line 960
    :cond_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 961
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 963
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 964
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 965
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    const-string v2, "SipSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   authentication retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 971
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 972
    const/16 v3, -0xb

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 975
    :cond_3
    const/4 v3, -0x8

    const-string v4, "incorrect username or password"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private inCall(Ljava/util/EventObject;)Z
    .locals 5
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 1271
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1273
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1274
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;)V

    .line 1275
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1276
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v1, v2

    .line 1303
    .end local p1
    :goto_0
    return v1

    .line 1278
    .restart local p1
    :cond_0
    const-string v1, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1281
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReinvite:Z

    move-object v0, p1

    .line 1282
    check-cast v0, Ljavax/sip/RequestEvent;

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1283
    .local v0, event:Ljavax/sip/RequestEvent;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1285
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    move v1, v2

    .line 1286
    goto :goto_0

    .line 1287
    .end local v0           #event:Ljavax/sip/RequestEvent;
    :cond_1
    const-string v1, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1288
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v3, 0xc8

    invoke-virtual {v1, p1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1289
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v1, v2

    .line 1290
    goto :goto_0

    .line 1291
    .restart local p1
    :cond_2
    const-string v1, "REFER"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1292
    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processReferRequest(Ljavax/sip/RequestEvent;)Z

    move-result v1

    goto :goto_0

    .line 1293
    .restart local p1
    :cond_3
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v1, :cond_4

    .line 1295
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1296
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    move-object v1, p1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1298
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v1, v2

    .line 1299
    goto :goto_0

    .line 1300
    .restart local p1
    :cond_4
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_5

    .line 1301
    const-string v1, "NOTIFY"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto/16 :goto_0

    .line 1303
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private incomingCall(Ljava/util/EventObject;)Z
    .locals 9
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1077
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1080
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->access$2300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$2400(Lcom/android/server/sip/SipSessionGroup;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1085
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v0, v8

    .line 1100
    :goto_0
    return v0

    .line 1087
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    .line 1090
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v8

    .line 1091
    goto :goto_0

    .line 1092
    :cond_1
    const-string v0, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v7, p1

    .line 1093
    check-cast v7, Ljavax/sip/RequestEvent;

    .line 1094
    .local v7, event:Ljavax/sip/RequestEvent;
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v7, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    .line 1097
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v8

    .line 1098
    goto :goto_0

    .line 1100
    .end local v7           #event:Ljavax/sip/RequestEvent;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private incomingCallToInCall(Ljava/util/EventObject;)Z
    .locals 5
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1106
    const-string v3, "ACK"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1107
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, sdp:Ljava/lang/String;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1109
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1110
    const/4 v2, -0x4

    const-string/jumbo v3, "peer sdp is empty"

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1120
    .end local v0           #sdp:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 1112
    .restart local v0       #sdp:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    goto :goto_0

    .line 1115
    .end local v0           #sdp:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v3, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1120
    goto :goto_0
.end method

.method private isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 836
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 839
    .local v0, current:Ljavax/sip/Transaction;
    :goto_0
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 843
    .local v1, target:Ljavax/sip/Transaction;
    :goto_1
    if-eq v0, v1, :cond_3

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    .line 844
    const-string v2, "SipSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not the current transaction; current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v2, 0x0

    .line 852
    :cond_0
    :goto_2
    return v2

    .line 836
    .end local v0           #current:Ljavax/sip/Transaction;
    .end local v1           #target:Ljavax/sip/Transaction;
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    goto :goto_0

    .line 839
    .restart local v0       #current:Ljavax/sip/Transaction;
    :cond_2
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    goto :goto_1

    .line 847
    .restart local v1       #target:Ljavax/sip/Transaction;
    :cond_3
    if-eqz v0, :cond_0

    .line 848
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transaction terminated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1388
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1389
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1395
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    .line 1397
    :goto_0
    return-void

    .line 1392
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 1389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1600(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1402
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1403
    return-void
.end method

.method private onError(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1406
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1407
    .local v0, statusCode:I
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v1, :cond_0

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onRegistrationDone(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1454
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1455
    return-void
.end method

.method private onRegistrationFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1460
    return-void
.end method

.method private onRegistrationFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1600(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1464
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1466
    return-void
.end method

.method private onRegistrationFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1469
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1470
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1472
    return-void
.end method

.method private outgoingCall(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1124
    const-string v5, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 1125
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1126
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1128
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1129
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_0

    .line 1164
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v5, :cond_0

    .line 1165
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v6, v6, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v7, 0x1f7

    invoke-direct {p0, v7}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1168
    :cond_0
    const/16 v5, 0x190

    if-lt v2, v5, :cond_3

    .line 1170
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    .line 1195
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_1
    :goto_0
    :sswitch_0
    return v3

    .line 1136
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :sswitch_1
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1137
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1138
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1139
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v4, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRingingBack(Landroid/net/sip/ISipSession;)V

    goto :goto_0

    .line 1143
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v4, :cond_2

    .line 1144
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v5, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v6, 0xc8

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1147
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1149
    :cond_2
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V

    .line 1150
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1151
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    goto :goto_0

    .line 1155
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1156
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v4, p0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    goto :goto_0

    .line 1172
    :cond_3
    const/16 v5, 0x12c

    if-lt v2, v5, :cond_1

    move v3, v4

    .line 1178
    goto :goto_0

    .line 1179
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_4
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v5

    if-ne v5, p1, :cond_5

    .line 1183
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1184
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;)V

    .line 1185
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    goto :goto_0

    .line 1187
    :cond_5
    const-string v5, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v0, p1

    .line 1190
    check-cast v0, Ljavax/sip/RequestEvent;

    .line 1191
    .local v0, event:Ljavax/sip/RequestEvent;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    goto/16 :goto_0

    .end local v0           #event:Ljavax/sip/RequestEvent;
    :cond_6
    move v3, v4

    .line 1195
    goto/16 :goto_0

    .line 1129
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_1
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x191 -> :sswitch_3
        0x197 -> :sswitch_3
        0x1eb -> :sswitch_0
    .end sparse-switch
.end method

.method private outgoingCallToReady(Ljava/util/EventObject;)Z
    .locals 6
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1200
    instance-of v5, p1, Ljavax/sip/ResponseEvent;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 1201
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1202
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1203
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1204
    .local v2, statusCode:I
    const-string v5, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1205
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_1

    .line 1233
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :goto_0
    return v3

    .line 1209
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :cond_0
    const-string v5, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1210
    sparse-switch v2, :sswitch_data_0

    .line 1222
    :cond_1
    const/16 v5, 0x190

    if-lt v2, v5, :cond_4

    .line 1223
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    goto :goto_0

    .line 1212
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    goto :goto_0

    .line 1215
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1219
    goto :goto_0

    .line 1226
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_3
    instance-of v3, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v3, :cond_4

    .line 1231
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v5, "timed out"

    invoke-direct {v3, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    :cond_4
    move v3, v4

    .line 1233
    goto :goto_0

    .line 1210
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1e7 -> :sswitch_1
    .end sparse-switch
.end method

.method private processCommand(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 716
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    const/16 v0, -0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot initiate a new transaction to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 722
    :cond_1
    return-void
.end method

.method private processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 828
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "dialog terminated"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    .line 833
    :goto_0
    return-void

    .line 830
    :cond_0
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not the current dialog; current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", terminated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processExceptions(Ljava/util/EventObject;)Z
    .locals 3
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x1

    .line 797
    const-string v0, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 800
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v1

    .line 823
    :goto_0
    return v0

    .line 802
    .restart local p1
    :cond_0
    const-string v0, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v2, 0x1e1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 805
    goto :goto_0

    .line 806
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 807
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    instance-of v0, p1, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_2

    .line 809
    check-cast p1, Ljavax/sip/TimeoutEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    :goto_1
    move v0, v1

    .line 814
    goto :goto_0

    .line 811
    .restart local p1
    :cond_2
    check-cast p1, Ljavax/sip/TransactionTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    goto :goto_1

    .line 816
    .restart local p1
    :cond_3
    const-string v0, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 818
    goto :goto_0

    .line 819
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_5

    .line 820
    check-cast p1, Ljavax/sip/DialogTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    move v0, v1

    .line 821
    goto :goto_0

    .line 823
    .restart local p1
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processReferRequest(Ljavax/sip/RequestEvent;)Z
    .locals 11
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1239
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    const-string v9, "Refer-To"

    invoke-interface {v8, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ReferToHeader;

    .line 1241
    .local v3, referto:Ljavax/sip/header/ReferToHeader;
    invoke-interface {v3}, Ljavax/sip/header/ReferToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    .line 1242
    .local v0, address:Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    check-cast v5, Ljavax/sip/address/SipURI;

    .line 1243
    .local v5, uri:Ljavax/sip/address/SipURI;
    const-string v8, "Replaces"

    invoke-interface {v5, v8}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1244
    .local v4, replacesHeader:Ljava/lang/String;
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 1245
    .local v6, username:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1246
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v8}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v8

    const/16 v9, 0x190

    invoke-virtual {v8, p1, v9}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1262
    :goto_0
    return v7

    .line 1250
    :cond_0
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v7

    const/16 v8, 0xca

    invoke-virtual {v7, p1, v8}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1251
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v8}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v9

    const/4 v10, 0x0

    #calls: Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v7, p1, v8, v9, v10}, Lcom/android/server/sip/SipSessionGroup;->access$400(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v2

    .line 1255
    .local v2, newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p0, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1256
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    const-string v8, "Referred-By"

    invoke-interface {v7, v8}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iput-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 1258
    iput-object v4, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 1259
    #calls: Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1260
    iget-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    const/4 v7, 0x1

    goto :goto_0

    .line 1263
    .end local v0           #address:Ljavax/sip/address/Address;
    .end local v2           #newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v3           #referto:Ljavax/sip/header/ReferToHeader;
    .end local v4           #replacesHeader:Ljava/lang/String;
    .end local v5           #uri:Ljavax/sip/address/SipURI;
    .end local v6           #username:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1264
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "createPeerProfile()"

    invoke-direct {v7, v8, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 881
    const-string v0, "SipSession"

    const-string/jumbo v1, "processing Timeout..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 896
    :pswitch_0
    const-string v0, "SipSession"

    const-string v1, "   do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_0
    return-void

    .line 885
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 886
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_0

    .line 892
    :pswitch_2
    const/4 v0, -0x5

    invoke-virtual {p1}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 874
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction terminated early: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, -0x3

    const-string/jumbo v1, "transaction terminated"

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 871
    :sswitch_0
    const-string v0, "SipSession"

    const-string v1, "Transaction terminated; do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private readyForCall(Ljava/util/EventObject;)Z
    .locals 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1038
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v1, :cond_2

    .line 1039
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v7, p1

    .line 1040
    check-cast v7, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1041
    .local v7, cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1042
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/sip/SipHelper;->sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1049
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1050
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1051
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCalling(Landroid/net/sip/ISipSession;)V

    move v0, v9

    .line 1072
    .end local v7           #cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    .end local p1
    :cond_1
    :goto_0
    return v0

    .line 1054
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v1, :cond_3

    .line 1055
    iput v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1056
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    move-result v8

    .line 1057
    .local v8, duration:I
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1059
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1060
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v0, v9

    .line 1062
    goto :goto_0

    .line 1063
    .end local v8           #duration:I
    .restart local p1
    :cond_3
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1064
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1065
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1067
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1068
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v0, v9

    .line 1070
    goto :goto_0
.end method

.method private registeringToReady(Ljava/util/EventObject;)Z
    .locals 6
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 926
    const-string v4, "REGISTER"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 927
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 928
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 930
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 931
    .local v3, statusCode:I
    sparse-switch v3, :sswitch_data_0

    .line 943
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1

    .line 944
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    move v4, v5

    .line 949
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    .end local p1
    :goto_0
    return v4

    .line 933
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v3       #statusCode:I
    .restart local p1
    :sswitch_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 934
    .local v2, state:I
    if-ne v2, v5, :cond_0

    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    move v4, v5

    .line 937
    goto :goto_0

    .line 934
    .restart local p1
    :cond_0
    const/4 v4, -0x1

    goto :goto_1

    .line 940
    .end local v2           #state:I
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move v4, v5

    .line 941
    goto :goto_0

    .line 949
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 931
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 592
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 593
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$1200(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 594
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 595
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 596
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 597
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 598
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 599
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 600
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 601
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 602
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReinvite:Z

    .line 604
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-interface {v0}, Ljavax/sip/Dialog;->delete()V

    .line 605
    :cond_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v0}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 612
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 615
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_1
    .catch Ljavax/sip/ObjectInUseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 621
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 623
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 625
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 627
    :cond_3
    return-void

    .line 616
    :catch_0
    move-exception v0

    goto :goto_1

    .line 609
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private startSessionTimer(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1330
    if-lez p1, :cond_0

    .line 1331
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1332
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    .line 1334
    :cond_0
    return-void
.end method

.method private toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 8
    .parameter "transaction"

    .prologue
    .line 857
    if-nez p1, :cond_0

    const-string/jumbo v3, "null"

    .line 861
    :goto_0
    return-object v3

    .line 858
    :cond_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 859
    .local v2, request:Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 860
    .local v1, dialog:Ljavax/sip/Dialog;
    const-string v3, "CSeq"

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    .line 861
    .local v0, cseq:Ljavax/sip/header/CSeqHeader;
    const-string/jumbo v4, "req=%s,%s,s=%s,ds=%s,"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x3

    if-nez v1, :cond_1

    const-string v3, "-"

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 693
    :goto_0
    return-void

    .line 690
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 692
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 705
    :goto_0
    return-void

    .line 702
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 704
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3

    .prologue
    .line 588
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    return-object v0
.end method

.method public endCall()V
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 697
    return-void
.end method

.method protected generateTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 726
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x41f0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReinvite:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    return v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 683
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 685
    return-void
.end method

.method public process(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ~~~~~   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v7}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #calls: Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v6

    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v6

    move v3, v4

    .line 792
    :goto_0
    return v3

    .line 746
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v3, :cond_2

    .line 748
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->process(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 751
    :cond_2
    const/4 v1, 0x0

    .line 752
    .local v1, dialog:Ljavax/sip/Dialog;
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_6

    .line 753
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 758
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 762
    :cond_4
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 790
    :pswitch_0
    const/4 v2, 0x0

    .line 792
    .local v2, processed:Z
    :goto_2
    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    move v3, v5

    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 793
    .end local v1           #dialog:Ljavax/sip/Dialog;
    .end local v2           #processed:Z
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 754
    .restart local v1       #dialog:Ljavax/sip/Dialog;
    :cond_6
    :try_start_1
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_3

    .line 755
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 756
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    invoke-static {v7, v3}, Lcom/android/server/sip/SipSessionGroup;->access$2000(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V

    goto :goto_1

    .line 765
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 766
    .restart local v2       #processed:Z
    goto :goto_2

    .line 768
    .end local v2           #processed:Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 769
    .restart local v2       #processed:Z
    goto :goto_2

    .line 771
    .end local v2           #processed:Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 772
    .restart local v2       #processed:Z
    goto :goto_2

    .line 774
    .end local v2           #processed:Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 775
    .restart local v2       #processed:Z
    goto :goto_2

    .line 778
    .end local v2           #processed:Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 779
    .restart local v2       #processed:Z
    goto :goto_2

    .line 781
    .end local v2           #processed:Z
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 782
    .restart local v2       #processed:Z
    goto :goto_2

    .line 784
    .end local v2           #processed:Z
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 785
    .restart local v2       #processed:Z
    goto :goto_2

    .line 787
    .end local v2           #processed:Z
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endingCall(Ljava/util/EventObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 788
    .restart local v2       #processed:Z
    goto :goto_2

    :cond_7
    move v3, v4

    .line 792
    goto :goto_3

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public register(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 708
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 709
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    instance-of v1, p1, Lcom/android/server/sip/SipSessionListenerProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/sip/SipSessionListenerProxy;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 663
    return-void
.end method

.method public startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "peerProfile"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1489
    new-instance v0, Ljavax/sip/SipException;

    const-string v2, "Cannot create more than one keepalive process in a SipSession"

    invoke-direct {v0, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1492
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1493
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1494
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1496
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    return-void
.end method

.method public startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .parameter "interval"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1480
    monitor-exit v1

    .line 1481
    return-void

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopKeepAliveProcess()V
    .locals 2

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1505
    :cond_0
    monitor-exit v1

    .line 1506
    return-void

    .line 1505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 731
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v3}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 735
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 712
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 713
    return-void
.end method
