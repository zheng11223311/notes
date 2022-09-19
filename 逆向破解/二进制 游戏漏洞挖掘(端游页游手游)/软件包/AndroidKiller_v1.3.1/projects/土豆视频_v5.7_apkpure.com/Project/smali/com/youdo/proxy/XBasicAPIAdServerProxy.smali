.class public Lcom/youdo/proxy/XBasicAPIAdServerProxy;
.super Lorg/openad/events/XYDEventDispatcher;


# instance fields
.field protected cookie:Ljava/lang/String;

.field protected mAdManagerContext:Lcom/youdo/XAdManagerContext;

.field protected mAdServerURL:Ljava/lang/String;

.field protected mHttpRequestParameter:Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youdo/XAdManagerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iput-object p2, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->userAgent:Ljava/lang/String;

    iput-object p4, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->cookie:Ljava/lang/String;

    return-void
.end method
