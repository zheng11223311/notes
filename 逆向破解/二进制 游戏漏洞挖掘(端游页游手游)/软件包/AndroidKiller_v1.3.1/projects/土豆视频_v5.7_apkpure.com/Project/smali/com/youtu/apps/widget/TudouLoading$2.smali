.class Lcom/youtu/apps/widget/TudouLoading$2;
.super Ljava/lang/Object;
.source "TudouLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/widget/TudouLoading;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/widget/TudouLoading;


# direct methods
.method constructor <init>(Lcom/youtu/apps/widget/TudouLoading;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youtu/apps/widget/TudouLoading$2;->this$0:Lcom/youtu/apps/widget/TudouLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading$2;->this$0:Lcom/youtu/apps/widget/TudouLoading;

    invoke-static {v0}, Lcom/youtu/apps/widget/TudouLoading;->access$000(Lcom/youtu/apps/widget/TudouLoading;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading$2;->this$0:Lcom/youtu/apps/widget/TudouLoading;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/TudouLoading;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading$2;->this$0:Lcom/youtu/apps/widget/TudouLoading;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/TudouLoading;->clearAnimation()V

    goto :goto_0
.end method
