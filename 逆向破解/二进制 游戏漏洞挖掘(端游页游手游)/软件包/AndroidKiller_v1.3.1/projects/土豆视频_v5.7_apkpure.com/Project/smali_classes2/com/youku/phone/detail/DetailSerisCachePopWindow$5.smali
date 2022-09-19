.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;
.super Ljava/lang/Thread;
.source "DetailSerisCachePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$402(Lcom/youku/phone/detail/DetailSerisCachePopWindow;[Ljava/lang/String;)[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    return-void
.end method
