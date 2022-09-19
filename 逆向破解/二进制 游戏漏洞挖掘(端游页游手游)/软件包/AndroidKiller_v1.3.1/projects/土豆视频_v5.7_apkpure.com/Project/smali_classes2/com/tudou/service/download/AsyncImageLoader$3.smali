.class Lcom/tudou/service/download/AsyncImageLoader$3;
.super Ljava/lang/Thread;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/AsyncImageLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    iput-object p2, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    iget-object v3, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$imageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tudou/service/download/AsyncImageLoader;->access$000(Lcom/tudou/service/download/AsyncImageLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    invoke-static {v2}, Lcom/tudou/service/download/AsyncImageLoader;->access$100(Lcom/tudou/service/download/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$imageUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 165
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/service/download/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method
