.class Lcom/youku/gamecenter/GameDialog$1$1;
.super Ljava/lang/Object;
.source "GameDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDialog$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/gamecenter/GameDialog$1;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDialog$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/youku/gamecenter/GameDialog$1$1;->this$1:Lcom/youku/gamecenter/GameDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1$1;->this$1:Lcom/youku/gamecenter/GameDialog$1;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDialog$1;->access$000(Lcom/youku/gamecenter/GameDialog$1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "gamecenter"

    const-string/jumbo v1, "show dialog get image failed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$1$1;->this$1:Lcom/youku/gamecenter/GameDialog$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameDialog$1;->cancel(Z)Z

    .line 103
    return-void
.end method
