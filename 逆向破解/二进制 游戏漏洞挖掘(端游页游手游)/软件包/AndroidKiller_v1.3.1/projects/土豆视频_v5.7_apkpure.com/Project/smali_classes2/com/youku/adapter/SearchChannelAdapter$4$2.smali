.class Lcom/youku/adapter/SearchChannelAdapter$4$2;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter$4;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/adapter/SearchChannelAdapter$4;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter$4;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$4$2;->this$1:Lcom/youku/adapter/SearchChannelAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4$2;->this$1:Lcom/youku/adapter/SearchChannelAdapter$4;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->notifyDataSetChanged()V

    .line 320
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 321
    return-void
.end method
