.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;,
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$SimpleCallback;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$Static;
    }
.end annotation


# static fields
.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouter"

.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const-class v2, Landroid/media/MediaRouter$Static;

    monitor-enter v2

    .line 293
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Landroid/media/MediaRouter$Static;

    invoke-direct {v1, v0}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    .line 296
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V

    .line 298
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    monitor-exit v2

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Landroid/media/MediaRouter$RouteInfo;[Landroid/view/Display;)Landroid/view/Display;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->choosePresentationDisplayForRoute(Landroid/media/MediaRouter$RouteInfo;[Landroid/view/Display;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 461
    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p0, Landroid/media/MediaRouter$RouteGroup;

    if-nez v2, :cond_1

    .line 466
    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 467
    .local v1, group:Landroid/media/MediaRouter$RouteGroup;
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iput v2, v1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 468
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 470
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 472
    move-object p0, v1

    .line 477
    .end local v1           #group:Landroid/media/MediaRouter$RouteGroup;
    :goto_0
    return-void

    .line 474
    :cond_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private static choosePresentationDisplayForRoute(Landroid/media/MediaRouter$RouteInfo;[Landroid/view/Display;)Landroid/view/Display;
    .locals 7
    .parameter "route"
    .parameter "displays"

    .prologue
    const/4 v4, 0x0

    .line 884
    iget v5, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 885
    iget-object v5, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 887
    move-object v0, p1

    .local v0, arr$:[Landroid/view/Display;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 888
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/Display;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    .end local v0           #arr$:[Landroid/view/Display;
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return-object v1

    .line 887
    .restart local v0       #arr$:[Landroid/view/Display;
    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #display:Landroid/view/Display;
    :cond_1
    move-object v1, v4

    .line 893
    goto :goto_1

    .line 896
    .end local v0           #arr$:[Landroid/view/Display;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v5, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 898
    const/4 v4, 0x0

    aget-object v1, p1, v4

    goto :goto_1

    :cond_3
    move-object v1, v4

    .line 901
    goto :goto_1
.end method

.method static dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 677
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 678
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 682
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 669
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 670
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 674
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 4
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 693
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 694
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    goto :goto_0

    .line 698
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 717
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 718
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 719
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 722
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 685
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 686
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 690
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "type"
    .parameter "info"

    .prologue
    .line 653
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 654
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 658
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 4
    .parameter "info"
    .parameter "group"

    .prologue
    .line 701
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 702
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    goto :goto_0

    .line 706
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "type"
    .parameter "info"

    .prologue
    .line 661
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 662
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 666
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 709
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 710
    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 711
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 714
    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method private static findMatchingDisplay(Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 4
    .parameter "d"
    .parameter "displays"

    .prologue
    .line 863
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 864
    aget-object v1, p1, v0

    .line 865
    .local v1, other:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    .end local v1           #other:Landroid/hardware/display/WifiDisplay;
    :goto_1
    return-object v1

    .line 863
    .restart local v1       #other:Landroid/hardware/display/WifiDisplay;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    .end local v1           #other:Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;
    .locals 5
    .parameter "d"

    .prologue
    .line 873
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 874
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 875
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 876
    .local v2, info:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    .end local v2           #info:Landroid/media/MediaRouter$RouteInfo;
    :goto_1
    return-object v2

    .line 874
    .restart local v2       #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v2           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 609
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static getRouteCountStatic()I
    .locals 1

    .prologue
    .line 605
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Z)Landroid/media/MediaRouter$RouteInfo;
    .locals 3
    .parameter "display"
    .parameter "available"

    .prologue
    const/4 v1, 0x3

    .line 794
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v2}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 795
    .local v0, newRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    .line 796
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 797
    const/4 v2, 0x0

    iput v2, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 798
    const/4 v2, 0x1

    iput v2, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 800
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setStatusCode(I)Z

    .line 802
    iput-boolean p1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 804
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 806
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter;->choosePresentationDisplayForRoute(Landroid/media/MediaRouter$RouteInfo;[Landroid/view/Display;)Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 808
    return-object v0

    .line 800
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 4
    .parameter "display"
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v0, v1

    .line 430
    .local v0, routeHasAddress:Z
    :goto_0
    if-nez p0, :cond_1

    if-nez v0, :cond_1

    .line 437
    :goto_1
    return v1

    .end local v0           #routeHasAddress:Z
    :cond_0
    move v0, v2

    .line 429
    goto :goto_0

    .line 434
    .restart local v0       #routeHasAddress:Z
    :cond_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 437
    goto :goto_1
.end method

.method static removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 514
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    .line 516
    .local v4, removingCat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 517
    .local v1, count:I
    const/4 v2, 0x0

    .line 518
    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 519
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 520
    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    if-ne v4, v0, :cond_4

    .line 521
    const/4 v2, 0x1

    .line 525
    .end local v0           #cat:Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v5, :cond_1

    .line 528
    const v5, 0x800001

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5, v6}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 530
    :cond_1
    if-nez v2, :cond_2

    .line 531
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 535
    .end local v1           #count:I
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .line 518
    .restart local v0       #cat:Landroid/media/MediaRouter$RouteCategory;
    .restart local v1       #count:I
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 9
    .parameter "types"
    .parameter "route"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 382
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v7, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 383
    .local v4, oldRoute:Landroid/media/MediaRouter$RouteInfo;
    if-ne v4, p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v7

    and-int/2addr v7, p0

    if-nez v7, :cond_2

    .line 385
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "selectRoute ignored; cannot select route with supported types "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    invoke-static {v8}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into route types "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v7, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 392
    .local v1, btRoute:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_4

    and-int/lit8 v7, p0, 0x1

    if-eqz v7, :cond_4

    if-eq p1, v1, :cond_3

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v7, :cond_4

    .line 395
    :cond_3
    :try_start_0
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v8, v7, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    if-ne p1, v1, :cond_8

    move v7, v3

    :goto_1
    invoke-interface {v8, v7}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_4
    :goto_2
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 403
    .local v0, activeDisplay:Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_9

    iget-object v7, v4, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v7, :cond_9

    move v5, v3

    .line 404
    .local v5, oldRouteHasAddress:Z
    :goto_3
    if-eqz p1, :cond_a

    iget-object v7, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 405
    .local v3, newRouteHasAddress:Z
    :goto_4
    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-eqz v3, :cond_6

    .line 406
    :cond_5
    if-eqz v3, :cond_b

    invoke-static {v0, p1}, Landroid/media/MediaRouter;->matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 407
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v7, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 413
    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    .line 415
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    and-int/2addr v6, p0

    invoke-static {v6, v4}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 417
    :cond_7
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object p1, v6, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 418
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    and-int/2addr v6, p0

    invoke-static {v6, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    goto/16 :goto_0

    .end local v0           #activeDisplay:Landroid/hardware/display/WifiDisplay;
    .end local v3           #newRouteHasAddress:Z
    .end local v5           #oldRouteHasAddress:Z
    :cond_8
    move v7, v6

    .line 395
    goto :goto_1

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "MediaRouter"

    const-string v8, "Error changing Bluetooth A2DP state"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #activeDisplay:Landroid/hardware/display/WifiDisplay;
    :cond_9
    move v5, v6

    .line 403
    goto :goto_3

    .restart local v5       #oldRouteHasAddress:Z
    :cond_a
    move v3, v6

    .line 404
    goto :goto_4

    .line 408
    .restart local v3       #newRouteHasAddress:Z
    :cond_b
    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 409
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    goto :goto_5
.end method

.method static systemVolumeChanged(I)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 725
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 726
    .local v1, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    if-nez v1, :cond_0

    .line 741
    :goto_0
    return-void

    .line 728
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_1

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne v1, v2, :cond_2

    .line 730
    :cond_1
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 731
    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_4

    .line 733
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    :goto_1
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error checking Bluetooth A2DP state to report volume change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 733
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 739
    :cond_4
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static typesToString(I)Ljava/lang/String;
    .locals 2
    .parameter "types"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, result:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "ROUTE_TYPE_LIVE_VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    const/high16 v1, 0x80

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    .line 285
    const-string v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 649
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 650
    return-void
.end method

.method private static updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;ZLandroid/hardware/display/WifiDisplayStatus;)V
    .locals 10
    .parameter "route"
    .parameter "display"
    .parameter "available"
    .parameter "wifiDisplayStatus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 813
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v8

    if-ne v8, v6, :cond_4

    move v3, v6

    .line 816
    .local v3, isScanning:Z
    :goto_0
    const/4 v1, 0x0

    .line 817
    .local v1, changed:Z
    const/4 v5, 0x0

    .line 819
    .local v5, newStatus:I
    if-eqz p2, :cond_6

    .line 820
    if-eqz v3, :cond_5

    move v5, v6

    .line 825
    :goto_1
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 826
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 827
    .local v0, activeState:I
    packed-switch v0, :pswitch_data_0

    .line 840
    .end local v0           #activeState:I
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, newName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 842
    iput-object v4, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 843
    const/4 v1, 0x1

    .line 846
    :cond_1
    iget-boolean v8, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eq v8, p2, :cond_7

    :goto_3
    or-int/2addr v1, v6

    .line 847
    iput-boolean p2, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 849
    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$RouteInfo;->setStatusCode(I)Z

    move-result v6

    or-int/2addr v1, v6

    .line 851
    if-eqz v1, :cond_2

    .line 852
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 855
    :cond_2
    if-nez p2, :cond_3

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v6, :cond_3

    .line 857
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v6, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 858
    .local v2, defaultRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    invoke-static {v6, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 860
    .end local v2           #defaultRoute:Landroid/media/MediaRouter$RouteInfo;
    :cond_3
    return-void

    .end local v1           #changed:Z
    .end local v3           #isScanning:Z
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newStatus:I
    :cond_4
    move v3, v7

    .line 813
    goto :goto_0

    .line 820
    .restart local v1       #changed:Z
    .restart local v3       #isScanning:Z
    .restart local v5       #newStatus:I
    :cond_5
    const/4 v5, 0x3

    goto :goto_1

    .line 822
    :cond_6
    const/4 v5, 0x4

    goto :goto_1

    .line 829
    .restart local v0       #activeState:I
    :pswitch_0
    const/4 v5, 0x0

    .line 830
    goto :goto_2

    .line 832
    :pswitch_1
    const/4 v5, 0x2

    .line 833
    goto :goto_2

    .line 835
    :pswitch_2
    const-string v8, "MediaRouter"

    const-string v9, "Active display is not connected!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #activeState:I
    .restart local v4       #newName:Ljava/lang/String;
    :cond_7
    move v6, v7

    .line 846
    goto :goto_3

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 15
    .parameter "newStatus"

    .prologue
    .line 744
    sget-object v14, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v11, v14, Landroid/media/MediaRouter$Static;->mLastKnownWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 747
    .local v11, oldStatus:Landroid/hardware/display/WifiDisplayStatus;
    const/4 v13, 0x0

    .line 748
    .local v13, wantScan:Z
    const/4 v4, 0x0

    .line 749
    .local v4, blockScan:Z
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    .line 751
    .local v9, oldDisplays:[Landroid/hardware/display/WifiDisplay;
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    .line 752
    .local v8, newDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 753
    .local v3, availableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 755
    .local v0, activeDisplay:Landroid/hardware/display/WifiDisplay;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v14, v8

    if-ge v6, v14, :cond_5

    .line 756
    aget-object v5, v8, v6

    .line 757
    .local v5, d:Landroid/hardware/display/WifiDisplay;
    invoke-static {v5, v9}, Landroid/media/MediaRouter;->findMatchingDisplay(Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v10

    .line 758
    .local v10, oldRemembered:Landroid/hardware/display/WifiDisplay;
    if-nez v10, :cond_3

    .line 759
    invoke-static {v5, v3}, Landroid/media/MediaRouter;->findMatchingDisplay(Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_2
    invoke-static {v5, v14}, Landroid/media/MediaRouter;->makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Z)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v14

    invoke-static {v14}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 761
    const/4 v13, 0x1

    .line 767
    :goto_3
    invoke-virtual {v5, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 768
    invoke-static {v5}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 769
    .local v1, activeRoute:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v14

    invoke-static {v14, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 774
    const/4 v4, 0x1

    .line 755
    .end local v1           #activeRoute:Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 749
    .end local v0           #activeDisplay:Landroid/hardware/display/WifiDisplay;
    .end local v3           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v5           #d:Landroid/hardware/display/WifiDisplay;
    .end local v6           #i:I
    .end local v8           #newDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v9           #oldDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v10           #oldRemembered:Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v14, 0x0

    new-array v9, v14, [Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    .line 759
    .restart local v0       #activeDisplay:Landroid/hardware/display/WifiDisplay;
    .restart local v3       #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v5       #d:Landroid/hardware/display/WifiDisplay;
    .restart local v6       #i:I
    .restart local v8       #newDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v9       #oldDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v10       #oldRemembered:Landroid/hardware/display/WifiDisplay;
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 763
    :cond_3
    invoke-static {v5, v3}, Landroid/media/MediaRouter;->findMatchingDisplay(Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v14

    if-eqz v14, :cond_4

    const/4 v2, 0x1

    .line 764
    .local v2, available:Z
    :goto_4
    invoke-static {v5}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v12

    .line 765
    .local v12, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v12, v5, v2, p0}, Landroid/media/MediaRouter;->updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;ZLandroid/hardware/display/WifiDisplayStatus;)V

    goto :goto_3

    .line 763
    .end local v2           #available:Z
    .end local v12           #route:Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 778
    .end local v5           #d:Landroid/hardware/display/WifiDisplay;
    .end local v10           #oldRemembered:Landroid/hardware/display/WifiDisplay;
    :cond_5
    const/4 v6, 0x0

    :goto_5
    array-length v14, v9

    if-ge v6, v14, :cond_7

    .line 779
    aget-object v5, v9, v6

    .line 780
    .restart local v5       #d:Landroid/hardware/display/WifiDisplay;
    invoke-static {v5, v8}, Landroid/media/MediaRouter;->findMatchingDisplay(Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v7

    .line 781
    .local v7, newDisplay:Landroid/hardware/display/WifiDisplay;
    if-nez v7, :cond_6

    .line 782
    invoke-static {v5}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v14

    invoke-static {v14}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 778
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 786
    .end local v5           #d:Landroid/hardware/display/WifiDisplay;
    .end local v7           #newDisplay:Landroid/hardware/display/WifiDisplay;
    :cond_7
    if-eqz v13, :cond_8

    if-nez v4, :cond_8

    .line 787
    sget-object v14, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v14, v14, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v14}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 790
    :cond_8
    sget-object v14, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object p0, v14, Landroid/media/MediaRouter$Static;->mLastKnownWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 791
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/media/MediaRouter$Callback;)V
    .locals 5
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 334
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 335
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 336
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 337
    .local v2, info:Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v3, p2, :cond_0

    .line 338
    iget v3, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v3, p1

    iput v3, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 343
    .end local v2           #info:Landroid/media/MediaRouter$CallbackInfo;
    :goto_1
    return-void

    .line 335
    .restart local v2       #info:Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v2           #info:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroid/media/MediaRouter$CallbackInfo;

    invoke-direct {v4, p2, p1, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;ILandroid/media/MediaRouter;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 456
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 457
    return-void
.end method

.method public addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 449
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 450
    return-void
.end method

.method public clearUserRoutes()V
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 496
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 499
    .local v1, info:Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->removeRouteAt(I)V

    .line 501
    add-int/lit8 v0, v0, -0x1

    .line 495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v1           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method

.method public createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .parameter "nameResId"
    .parameter "isGroupable"

    .prologue
    .line 645
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x80

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    return-object v0
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 634
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x80

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 1
    .parameter "category"

    .prologue
    .line 623
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    return-object v0
.end method

.method public getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .locals 1
    .parameter "index"

    .prologue
    .line 581
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 570
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 601
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    .prologue
    .line 591
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "type"

    .prologue
    .line 322
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getSystemAudioCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getSystemAudioRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public removeCallback(Landroid/media/MediaRouter$Callback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 351
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 352
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 353
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    iget-object v2, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v2, p1, :cond_0

    .line 354
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    :goto_1
    return-void

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCallback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): callback not registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeRouteAt(I)V
    .locals 8
    .parameter "routeIndex"

    .prologue
    .line 538
    if-ltz p1, :cond_3

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_3

    .line 539
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    .line 540
    .local v4, info:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v5

    .line 541
    .local v5, removingCat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 542
    .local v1, count:I
    const/4 v2, 0x0

    .line 543
    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 544
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 545
    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    if-ne v5, v0, :cond_4

    .line 546
    const/4 v2, 0x1

    .line 550
    .end local v0           #cat:Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v4, v6, :cond_1

    .line 553
    const v6, 0x800003

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v6, v7}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 556
    :cond_1
    if-nez v2, :cond_2

    .line 557
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 559
    :cond_2
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 561
    .end local v1           #count:I
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #info:Landroid/media/MediaRouter$RouteInfo;
    .end local v5           #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .line 543
    .restart local v0       #cat:Landroid/media/MediaRouter$RouteCategory;
    .restart local v1       #count:I
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #info:Landroid/media/MediaRouter$RouteInfo;
    .restart local v5       #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 510
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 511
    return-void
.end method

.method public removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 486
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 487
    return-void
.end method

.method public selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "types"
    .parameter "route"

    .prologue
    .line 370
    const/high16 v0, 0x80

    and-int/2addr p1, v0

    .line 371
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 372
    return-void
.end method

.method public selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "types"
    .parameter "route"

    .prologue
    .line 378
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 379
    return-void
.end method
