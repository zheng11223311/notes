.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;
.super Ljava/lang/Object;
.source "PluginFullScreenPlayHLS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    const-string v0, "test1"

    const-string v1, "errorPage onClick"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
