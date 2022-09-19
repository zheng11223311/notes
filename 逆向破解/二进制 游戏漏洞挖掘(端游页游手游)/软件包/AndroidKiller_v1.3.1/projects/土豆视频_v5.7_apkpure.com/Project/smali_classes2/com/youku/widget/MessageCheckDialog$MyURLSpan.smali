.class Lcom/youku/widget/MessageCheckDialog$MyURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "MessageCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/MessageCheckDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyURLSpan"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;->mUrl:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;->context:Landroid/app/Activity;

    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 151
    return-void
.end method
