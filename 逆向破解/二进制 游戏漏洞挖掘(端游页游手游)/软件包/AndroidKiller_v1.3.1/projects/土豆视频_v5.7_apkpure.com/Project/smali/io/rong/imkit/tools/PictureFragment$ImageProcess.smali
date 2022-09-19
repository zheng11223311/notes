.class Lio/rong/imkit/tools/PictureFragment$ImageProcess;
.super Landroid/os/AsyncTask;
.source "PictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PictureFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PictureFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 165
    const/4 v6, 0x0

    .line 167
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    aget-object v1, p1, v10

    .line 168
    .local v1, "param":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 170
    .local v9, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 171
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    move-object v9, v1

    .line 188
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->this$0:Lio/rong/imkit/tools/PictureFragment;

    invoke-virtual {v0}, Lio/rong/imkit/tools/PictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x3c0

    const/16 v3, 0x3c0

    invoke-static {v0, v9, v2, v3}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    move-object v3, v6

    .line 193
    :goto_2
    return-object v3

    .line 173
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v0, v0, Lio/rong/imkit/tools/PictureFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 178
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 182
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v8

    .line 190
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->this$0:Lio/rong/imkit/tools/PictureFragment;

    iget-object v0, v0, Lio/rong/imkit/tools/PictureFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 160
    return-void
.end method
