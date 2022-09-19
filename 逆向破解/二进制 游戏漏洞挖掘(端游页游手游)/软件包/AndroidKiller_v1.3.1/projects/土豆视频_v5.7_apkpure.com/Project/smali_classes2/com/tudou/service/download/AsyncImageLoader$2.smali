.class Lcom/tudou/service/download/AsyncImageLoader$2;
.super Landroid/os/Handler;
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

.field final synthetic val$imageCallback:Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/AsyncImageLoader;Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tudou/service/download/AsyncImageLoader$2;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    iput-object p2, p0, Lcom/tudou/service/download/AsyncImageLoader$2;->val$imageCallback:Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;

    iput-object p3, p0, Lcom/tudou/service/download/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/tudou/service/download/AsyncImageLoader$2;->val$imageCallback:Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/tudou/service/download/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 157
    return-void
.end method
