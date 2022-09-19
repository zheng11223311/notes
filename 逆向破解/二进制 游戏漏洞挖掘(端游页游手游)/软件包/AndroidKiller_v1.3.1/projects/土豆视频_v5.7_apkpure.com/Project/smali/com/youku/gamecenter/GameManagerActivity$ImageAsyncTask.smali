.class Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "GameManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/youku/gamecenter/GameManagerActivity$GameIcon;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameManagerActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameManagerActivity;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 317
    check-cast p1, [Ljava/util/List;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->doInBackground([Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "list":[Ljava/util/List;, "[Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 321
    aget-object v3, p1, v7

    .line 322
    .local v3, "pathes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground load icon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerActivity;->logs(Ljava/lang/String;)V

    .line 330
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 332
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground load icon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bitmap=null !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerActivity;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/youku/gamecenter/GameManagerActivity$GameIcon;

    new-instance v5, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;

    invoke-direct {v5, v2, v0}, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public varargs onProgressUpdate([Lcom/youku/gamecenter/GameManagerActivity$GameIcon;)V
    .locals 3
    .param p1, "gamesIcon"    # [Lcom/youku/gamecenter/GameManagerActivity$GameIcon;

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameManagerActivity;->access$000(Lcom/youku/gamecenter/GameManagerActivity;)Ljava/util/Map;

    move-result-object v0

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;->id:Ljava/lang/String;

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 317
    check-cast p1, [Lcom/youku/gamecenter/GameManagerActivity$GameIcon;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->onProgressUpdate([Lcom/youku/gamecenter/GameManagerActivity$GameIcon;)V

    return-void
.end method
