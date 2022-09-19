.class public Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;
.super Lorg/openad/events/XYDEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerEvent"
.end annotation


# static fields
.field public static final EVENT_BATCH_REQUEST_DONE:Ljava/lang/String; = "EVENT_BATCH_REQUEST_DONE"

.field public static final EVENT_BATCH_REQUEST_START:Ljava/lang/String; = "EVENT_BATCH_REQUEST_START"


# instance fields
.field public cookie:Ljava/lang/String;

.field public isHttpRequestingFired:Ljava/lang/Boolean;

.field public success:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;


# direct methods
.method public constructor <init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-direct {p0, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->isHttpRequestingFired:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->cookie:Ljava/lang/String;

    iput-object p4, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->success:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;-><init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p5, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->isHttpRequestingFired:Ljava/lang/Boolean;

    return-void
.end method
