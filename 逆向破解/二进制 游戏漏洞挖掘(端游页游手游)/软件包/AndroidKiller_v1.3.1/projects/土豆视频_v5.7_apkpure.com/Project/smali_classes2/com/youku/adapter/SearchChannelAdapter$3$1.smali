.class Lcom/youku/adapter/SearchChannelAdapter$3$1;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter$3;->onSucess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/adapter/SearchChannelAdapter$3;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter$3;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$3$1;->this$1:Lcom/youku/adapter/SearchChannelAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$3$1;->this$1:Lcom/youku/adapter/SearchChannelAdapter$3;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->notifyDataSetChanged()V

    .line 270
    const v0, 0x7f0d01dd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 271
    return-void
.end method
