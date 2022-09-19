.class Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;
.super Ljava/lang/Object;
.source "GameLocalPresentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gift_code:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->this$0:Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->val$gift_code:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->val$gift_code:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/youku/gamecenter/R$string;->game_copy_to_clipboard_success:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/SystemUtils;->copyDataToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
