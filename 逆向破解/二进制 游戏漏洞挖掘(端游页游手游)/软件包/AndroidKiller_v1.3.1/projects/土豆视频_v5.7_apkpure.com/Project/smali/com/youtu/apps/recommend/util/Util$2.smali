.class final Lcom/youtu/apps/recommend/util/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/util/Util;->systemDownLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public onSuccess(Lcom/youtu/apps/network/HttpRequestManager;)V
    .locals 0
    .param p1, "httpRequestManager"    # Lcom/youtu/apps/network/HttpRequestManager;

    .prologue
    .line 231
    return-void
.end method
