.class Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
.super Lcom/youtu/apps/image/ImageAsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/image/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youtu/apps/image/ImageAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private imageCallback:Lcom/youtu/apps/image/ImageCallback;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youtu/apps/image/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-direct {p0}, Lcom/youtu/apps/image/ImageAsyncTask;-><init>()V

    .line 257
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;Lcom/youtu/apps/image/ImageCallback;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageCallback"    # Lcom/youtu/apps/image/ImageCallback;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-direct {p0}, Lcom/youtu/apps/image/ImageAsyncTask;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 262
    iput-object p3, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/youtu/apps/image/ImageCallback;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 342
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 343
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/youtu/apps/image/ImageWorker;->access$400(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 345
    .local v0, "bitmapWorkerTask":Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 349
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 270
    aget-object v2, p1, v3

    iput-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 271
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 281
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$200(Lcom/youtu/apps/image/ImageWorker;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/youtu/apps/image/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$200(Lcom/youtu/apps/image/ImageWorker;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/youtu/apps/image/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 306
    if-eqz v0, :cond_3

    .line 307
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/youtu/apps/image/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 313
    :cond_2
    :goto_0
    return-object v0

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youtu/apps/image/ImageCache;->getDiskCache()Lcom/youtu/apps/image/DiskLruCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v2}, Lcom/youtu/apps/image/ImageWorker;->access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youtu/apps/image/ImageCache;->getDiskCache()Lcom/youtu/apps/image/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/youtu/apps/image/DiskLruCache;->removeFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v1}, Lcom/youtu/apps/image/ImageWorker;->access$200(Lcom/youtu/apps/image/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 p1, 0x0

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 328
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 329
    iget-object v1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/youtu/apps/image/ImageWorker;

    invoke-static {v1, v0, p1}, Lcom/youtu/apps/image/ImageWorker;->access$300(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/youtu/apps/image/ImageCallback;

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/youtu/apps/image/ImageCallback;

    iget-object v2, p0, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/youtu/apps/image/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 334
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
