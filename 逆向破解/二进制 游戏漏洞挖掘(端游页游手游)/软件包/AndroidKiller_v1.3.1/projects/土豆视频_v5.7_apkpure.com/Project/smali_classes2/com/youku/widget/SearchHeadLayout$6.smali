.class Lcom/youku/widget/SearchHeadLayout$6;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SearchHeadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchHeadLayout;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchHeadLayout;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 166
    const-string v0, "SearchHeadLayout"

    const-string v1, "afterText"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$200(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/widget/SearchHeadLayout$OnEditListener;->onAfterTextChanged(Landroid/text/Editable;)V

    .line 173
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$200(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 178
    const-string v0, "SearchHeadLayout"

    const-string v1, "beforeTextChanged"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$200(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 186
    const-string v0, "SearchHeadLayout"

    const-string v1, "onTextChanged"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$6;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$200(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_0
    return-void
.end method
