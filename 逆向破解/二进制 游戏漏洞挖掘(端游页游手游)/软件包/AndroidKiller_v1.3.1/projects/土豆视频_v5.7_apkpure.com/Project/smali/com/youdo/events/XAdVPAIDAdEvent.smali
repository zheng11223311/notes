.class public Lcom/youdo/events/XAdVPAIDAdEvent;
.super Lorg/openad/events/VPAIDAdEvent;


# instance fields
.field private mAdInstance:Lcom/youdo/vo/XAdInstance;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openad/events/VPAIDAdEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/youdo/events/XAdVPAIDAdEvent;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    return-void
.end method


# virtual methods
.method public getXAdInstance()Lcom/youdo/vo/XAdInstance;
    .locals 1

    iget-object v0, p0, Lcom/youdo/events/XAdVPAIDAdEvent;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    return-object v0
.end method
