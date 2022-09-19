.class Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;
.super Ljava/lang/Object;
.source "VideoCacheDiskProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 48
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v3, v3, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v3}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00fb

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v6, v6, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-static {v6}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$100(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v7, v7, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-static {v7}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$000(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "s":Ljava/lang/String;
    const-string v3, "\u95f4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "start":I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/16 v4, 0x66

    invoke-static {v9, v9, v4, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v3, v3, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v3, v1}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalUsedSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v5, v5, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-static {v5}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$000(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFreeSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    iget-object v5, v5, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-static {v5}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$100(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
