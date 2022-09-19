.class public Lorg/openad/events/OpenAdNetworkEvent;
.super Lorg/openad/events/XYDEvent;


# static fields
.field public static final NETWORK_CHANGED:Ljava/lang/String; = "NetworkChanged"


# instance fields
.field private mNetworkType:Lorg/openad/constants/IOpenAdContants$NetworkType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/openad/constants/IOpenAdContants$NetworkType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openad/events/OpenAdNetworkEvent;->mNetworkType:Lorg/openad/constants/IOpenAdContants$NetworkType;

    return-void
.end method


# virtual methods
.method public getNetworkType()Lorg/openad/constants/IOpenAdContants$NetworkType;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/OpenAdNetworkEvent;->mNetworkType:Lorg/openad/constants/IOpenAdContants$NetworkType;

    return-object v0
.end method
