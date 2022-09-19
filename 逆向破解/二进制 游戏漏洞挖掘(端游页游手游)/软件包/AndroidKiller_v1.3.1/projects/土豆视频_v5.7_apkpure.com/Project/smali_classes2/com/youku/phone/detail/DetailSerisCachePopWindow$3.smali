.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$3;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;I)V
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
    .line 118
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$3;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$3;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/util/ArrayList;)V

    .line 123
    return-void
.end method
