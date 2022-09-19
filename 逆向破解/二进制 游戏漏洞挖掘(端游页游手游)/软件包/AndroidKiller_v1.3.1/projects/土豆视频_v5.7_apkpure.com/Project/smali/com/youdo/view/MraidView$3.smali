.class Lcom/youdo/view/MraidView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->forceRedrawByJSInjection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$3;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView$3;->this$0:Lcom/youdo/view/MraidView;

    const-string v1, "javascript:(function() { var select = document.getElementsByClassName(\'__yd__xadsdk_rerendering__\')[0]\r\n                     if(select)                       select.style.display = \'none\';})()"

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
