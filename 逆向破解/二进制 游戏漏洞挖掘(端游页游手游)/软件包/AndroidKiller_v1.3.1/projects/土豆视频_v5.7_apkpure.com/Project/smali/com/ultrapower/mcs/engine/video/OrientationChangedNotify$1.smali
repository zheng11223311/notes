.class Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationChangedNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;


# direct methods
.method constructor <init>(Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify$1;->this$0:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify$1;->this$0:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    invoke-virtual {v0, p1}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->FireOrientationChanged(I)V

    .line 78
    return-void
.end method
