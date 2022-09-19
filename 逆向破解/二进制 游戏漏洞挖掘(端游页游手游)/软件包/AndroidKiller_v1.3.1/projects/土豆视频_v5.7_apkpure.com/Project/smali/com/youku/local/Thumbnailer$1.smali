.class Lcom/youku/local/Thumbnailer$1;
.super Ljava/lang/Object;
.source "Thumbnailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/local/Thumbnailer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/local/Thumbnailer;

.field final synthetic val$item:Lcom/youku/local/Media;


# direct methods
.method constructor <init>(Lcom/youku/local/Thumbnailer;Lcom/youku/local/Media;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youku/local/Thumbnailer$1;->this$0:Lcom/youku/local/Thumbnailer;

    iput-object p2, p0, Lcom/youku/local/Thumbnailer$1;->val$item:Lcom/youku/local/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/local/Thumbnailer$1;->this$0:Lcom/youku/local/Thumbnailer;

    invoke-static {v0}, Lcom/youku/local/Thumbnailer;->access$000(Lcom/youku/local/Thumbnailer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/local/Scanner;->getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/local/Scanner;->getScanListener()Lcom/youku/local/IScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/youku/local/Thumbnailer$1;->this$0:Lcom/youku/local/Thumbnailer;

    invoke-static {v0}, Lcom/youku/local/Thumbnailer;->access$000(Lcom/youku/local/Thumbnailer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/local/Scanner;->getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/local/Scanner;->getScanListener()Lcom/youku/local/IScanListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/local/Thumbnailer$1;->val$item:Lcom/youku/local/Media;

    invoke-interface {v0, v1}, Lcom/youku/local/IScanListener;->onThumbnailUpdate(Lcom/youku/local/Media;)V

    .line 123
    :cond_0
    return-void
.end method
