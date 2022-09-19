.class final Lcom/tudou/videoshare/ShareUtil$8;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

.field final synthetic val$needDismiss:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iput-boolean p2, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$needDismiss:Z

    iput-object p3, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iget-boolean v1, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$needDismiss:Z

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$8;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil$IShareCallBack;->dismiss(ZLjava/lang/String;)V

    .line 345
    return-void
.end method
