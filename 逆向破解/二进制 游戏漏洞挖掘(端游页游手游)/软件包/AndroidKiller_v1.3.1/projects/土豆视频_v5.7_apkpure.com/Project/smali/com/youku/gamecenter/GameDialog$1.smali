.class Lcom/youku/gamecenter/GameDialog$1;
.super Lcom/youku/gamecenter/services/YoukuAsyncTask;
.source "GameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDialog;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/gamecenter/services/YoukuAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private isLoaded:Z

.field final synthetic this$0:Lcom/youku/gamecenter/GameDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDialog;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iput-object p2, p0, Lcom/youku/gamecenter/GameDialog$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$1;->isLoaded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameDialog$1;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDialog$1;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$1;->isLoaded:Z

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "Void"    # [Ljava/lang/Void;

    .prologue
    .line 94
    invoke-static {}, Lcom/youku/gamecenter/GameDialog;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/youku/gamecenter/GameDialog$1$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameDialog$1$1;-><init>(Lcom/youku/gamecenter/GameDialog$1;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog$1;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/youku/gamecenter/GameDialog;->access$200(Lcom/youku/gamecenter/GameDialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameDialog$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDialog;->access$300(Lcom/youku/gamecenter/GameDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$1;->isLoaded:Z

    .line 122
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    new-instance v1, Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v2, v2, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/gamecenter/R$style;->GameDialog:I

    iget-object v4, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v4, v4, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-boolean v4, v4, Lcom/youku/gamecenter/data/GameDialogInfo;->mIsYouku:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, v0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    .line 124
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v0, v0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->show()V

    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v0, v0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v1, v1, Lcom/youku/gamecenter/GameDialog;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->setGamePic(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v0, v0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v0, v0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    new-instance v1, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;-><init>(Lcom/youku/gamecenter/GameDialog;Lcom/youku/gamecenter/GameDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->setListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1;->this$0:Lcom/youku/gamecenter/GameDialog;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDialog;->access$500(Lcom/youku/gamecenter/GameDialog;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameDialog$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
