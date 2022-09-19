.class Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/HotHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadHolder"
.end annotation


# instance fields
.field public headDelete:Landroid/widget/TextView;

.field public headLine:Landroid/view/View;

.field public headTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
