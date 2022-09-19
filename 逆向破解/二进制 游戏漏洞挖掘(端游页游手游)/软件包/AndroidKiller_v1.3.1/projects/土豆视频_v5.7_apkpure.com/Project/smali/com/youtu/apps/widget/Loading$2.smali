.class Lcom/youtu/apps/widget/Loading$2;
.super Ljava/lang/Object;
.source "Loading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/widget/Loading;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/widget/Loading;


# direct methods
.method constructor <init>(Lcom/youtu/apps/widget/Loading;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/youtu/apps/widget/Loading$2;->this$0:Lcom/youtu/apps/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/youtu/apps/widget/Loading$2;->this$0:Lcom/youtu/apps/widget/Loading;

    invoke-virtual {v1}, Lcom/youtu/apps/widget/Loading;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 84
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    return-void
.end method
