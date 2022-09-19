.class Lcom/youku/player/ui/widget/Loading$1;
.super Ljava/lang/Object;
.source "Loading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ui/widget/Loading;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ui/widget/Loading;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/Loading;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/player/ui/widget/Loading$1;->this$0:Lcom/youku/player/ui/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/youku/player/ui/widget/Loading$1;->this$0:Lcom/youku/player/ui/widget/Loading;

    invoke-virtual {v1}, Lcom/youku/player/ui/widget/Loading;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 73
    return-void
.end method
