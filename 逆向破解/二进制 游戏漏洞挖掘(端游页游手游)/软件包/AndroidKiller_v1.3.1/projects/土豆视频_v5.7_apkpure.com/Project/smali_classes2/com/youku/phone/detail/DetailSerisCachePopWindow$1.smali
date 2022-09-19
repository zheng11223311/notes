.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$1;
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
    .line 98
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$1;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$1;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-virtual {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dismiss()V

    .line 103
    return-void
.end method
