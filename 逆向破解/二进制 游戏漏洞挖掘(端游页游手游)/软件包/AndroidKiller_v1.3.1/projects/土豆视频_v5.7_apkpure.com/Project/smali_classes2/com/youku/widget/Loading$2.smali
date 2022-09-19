.class Lcom/youku/widget/Loading$2;
.super Ljava/lang/Object;
.source "Loading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/Loading;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/Loading;


# direct methods
.method constructor <init>(Lcom/youku/widget/Loading;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/widget/Loading$2;->this$0:Lcom/youku/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/widget/Loading$2;->this$0:Lcom/youku/widget/Loading;

    invoke-static {v0}, Lcom/youku/widget/Loading;->access$000(Lcom/youku/widget/Loading;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/youku/widget/Loading$2;->this$0:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/Loading$2;->this$0:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->clearAnimation()V

    goto :goto_0
.end method
