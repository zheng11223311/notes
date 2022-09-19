.class final Lcom/youku/util/NetUtils$1;
.super Ljava/lang/Object;
.source "NetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/NetUtils;->getNetInfo(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$jsonInfo:Ljava/lang/String;

.field final synthetic val$postInfo:Ljava/util/HashMap;

.field final synthetic val$strUrl:Ljava/lang/String;

.field final synthetic val$type:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/youku/util/NetUtils$1;->val$strUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/youku/util/NetUtils$1;->val$postInfo:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/youku/util/NetUtils$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/youku/util/NetUtils$1;->val$jsonInfo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/youku/util/NetUtils$1;->val$type:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youku/util/NetUtils$1;->val$strUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/util/NetUtils$1;->val$postInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/youku/util/NetUtils$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/util/NetUtils$1;->val$jsonInfo:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/youku/util/NetUtils$1;->val$type:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/util/NetUtils;->access$000(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method
