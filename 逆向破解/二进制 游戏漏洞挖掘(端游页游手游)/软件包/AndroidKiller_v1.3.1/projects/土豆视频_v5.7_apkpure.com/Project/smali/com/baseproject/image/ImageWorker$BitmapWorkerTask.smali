.class Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
.super Lcom/baseproject/image/ImageAsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseproject/image/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/image/ImageAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private imageCallback:Lcom/baseproject/image/ImageCallback;

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

.field final synthetic this$0:Lcom/baseproject/image/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-direct {p0}, Lcom/baseproject/image/ImageAsyncTask;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;Lcom/baseproject/image/ImageCallback;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageCallback"    # Lcom/baseproject/image/ImageCallback;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-direct {p0}, Lcom/baseproject/image/ImageAsyncTask;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 287
    iput-object p3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/baseproject/image/ImageCallback;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 369
    iget-object v2, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 370
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/baseproject/image/ImageWorker;->access$400(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 372
    .local v0, "bitmapWorkerTask":Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 376
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
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 295
    aget-object v3, p1, v4

    iput-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 296
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 306
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$200(Lcom/baseproject/image/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baseproject/image/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$200(Lcom/baseproject/image/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 320
    .local v2, "mImageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    aget-object v4, p1, v4

    invoke-virtual {v3, v4, v2}, Lcom/baseproject/image/ImageWorker;->processBitmap(Ljava/lang/Object;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .end local v2    # "mImageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 331
    if-eqz v0, :cond_3

    .line 332
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/baseproject/image/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 340
    :cond_2
    :goto_0
    return-object v0

    .line 333
    :cond_3
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baseproject/image/ImageCache;->getDiskCache()Lcom/baseproject/image/DiskLruCache;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v3}, Lcom/baseproject/image/ImageWorker;->access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baseproject/image/ImageCache;->getDiskCache()Lcom/baseproject/image/DiskLruCache;

    move-result-object v3

    invoke-static {v1}, Lcom/baseproject/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baseproject/image/DiskLruCache;->removeFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v1}, Lcom/baseproject/image/ImageWorker;->access$200(Lcom/baseproject/image/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    const/4 p1, 0x0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 355
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 356
    iget-object v1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->this$0:Lcom/baseproject/image/ImageWorker;

    invoke-static {v1, v0, p1}, Lcom/baseproject/image/ImageWorker;->access$300(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/baseproject/image/ImageCallback;

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->imageCallback:Lcom/baseproject/image/ImageCallback;

    iget-object v2, p0, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/baseproject/image/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 361
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 276
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
