.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpLangList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$3102(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Z)Z

    .line 1433
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$3700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1435
    return-void
.end method
