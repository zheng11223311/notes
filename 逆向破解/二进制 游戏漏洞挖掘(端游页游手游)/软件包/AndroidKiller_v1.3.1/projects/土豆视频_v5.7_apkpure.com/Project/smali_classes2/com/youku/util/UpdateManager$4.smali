.class Lcom/youku/util/UpdateManager$4;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/UpdateManager;->showProgressDialog(Z)V
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
    .line 181
    iput-object p1, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/util/UpdateManager;->access$702(Lcom/youku/util/UpdateManager;Z)Z

    .line 185
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$100(Lcom/youku/util/UpdateManager;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$800(Lcom/youku/util/UpdateManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$800(Lcom/youku/util/UpdateManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/youku/util/UpdateManager$4;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$800(Lcom/youku/util/UpdateManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
