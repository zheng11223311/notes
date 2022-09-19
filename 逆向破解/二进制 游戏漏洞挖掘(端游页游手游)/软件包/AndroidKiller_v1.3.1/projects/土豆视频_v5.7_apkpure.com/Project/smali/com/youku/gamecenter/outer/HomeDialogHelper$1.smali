.class Lcom/youku/gamecenter/outer/HomeDialogHelper$1;
.super Landroid/os/AsyncTask;
.source "HomeDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/outer/HomeDialogHelper;->loadImageAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    iput-object p2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$000(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$102(Lcom/youku/gamecenter/outer/HomeDialogHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 429
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$100(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$200(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Lcom/youku/gamecenter/widgets/HomePageDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$200(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Lcom/youku/gamecenter/widgets/HomePageDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$1;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$100(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setItem1DataBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
