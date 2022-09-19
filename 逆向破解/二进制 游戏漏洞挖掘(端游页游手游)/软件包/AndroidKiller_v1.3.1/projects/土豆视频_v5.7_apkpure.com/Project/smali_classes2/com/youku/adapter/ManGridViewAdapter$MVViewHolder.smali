.class Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;
.super Ljava/lang/Object;
.source "ManGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/ManGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MVViewHolder"
.end annotation


# instance fields
.field public musicBtn0:Landroid/widget/Button;

.field public musicBtn1:Landroid/widget/Button;

.field public musicRel0:Landroid/widget/LinearLayout;

.field public musicRel1:Landroid/widget/LinearLayout;

.field public musicTxt0:Landroid/widget/TextView;

.field public musicTxt1:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/adapter/ManGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/ManGridViewAdapter;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->this$0:Lcom/youku/adapter/ManGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
