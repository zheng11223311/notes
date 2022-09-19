.class Lcom/youku/util/UpdateManager$5;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/UpdateManager;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/UpdateManager;


# direct methods
.method constructor <init>(Lcom/youku/util/UpdateManager;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$900(Lcom/youku/util/UpdateManager;)V

    .line 305
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$100(Lcom/youku/util/UpdateManager;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$100(Lcom/youku/util/UpdateManager;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->dismiss()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$900(Lcom/youku/util/UpdateManager;)V

    .line 310
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/youku/util/UpdateManager$5;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
