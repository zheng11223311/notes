.class Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "GameManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerFragment;
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
        "Lcom/youku/gamecenter/GameManagerFragment$GameIcon;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameManagerFragment;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameManagerFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, [Ljava/util/List;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->doInBackground([Ljava/util/List;)Ljava/lang/Object;

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

    .line 320
    aget-object v3, p1, v7

    .line 321
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

    .line 323
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground load icon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerFragment;->logs(Ljava/lang/String;)V

    .line 329
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 331
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerFragment;

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

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerFragment;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/youku/gamecenter/GameManagerFragment$GameIcon;

    new-instance v5, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;

    invoke-direct {v5, v2, v0}, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public varargs onProgressUpdate([Lcom/youku/gamecenter/GameManagerFragment$GameIcon;)V
    .locals 3
    .param p1, "gamesIcon"    # [Lcom/youku/gamecenter/GameManagerFragment$GameIcon;

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerFragment;

    invoke-static {v0}, Lcom/youku/gamecenter/GameManagerFragment;->access$000(Lcom/youku/gamecenter/GameManagerFragment;)Ljava/util/Map;

    move-result-object v0

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;->id:Ljava/lang/String;

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->this$0:Lcom/youku/gamecenter/GameManagerFragment;

    invoke-static {v0}, Lcom/youku/gamecenter/GameManagerFragment;->access$100(Lcom/youku/gamecenter/GameManagerFragment;)Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->notifyDataSetChanged()V

    .line 344
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, [Lcom/youku/gamecenter/GameManagerFragment$GameIcon;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->onProgressUpdate([Lcom/youku/gamecenter/GameManagerFragment$GameIcon;)V

    return-void
.end method
