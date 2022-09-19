.class public final enum Lcom/youku/gamecenter/widgets/ActionItem;
.super Ljava/lang/Enum;
.source "ActionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/ActionItem$ActionClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/gamecenter/widgets/ActionItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/gamecenter/widgets/ActionItem;

.field public static final enum ACTION_CANCEL:Lcom/youku/gamecenter/widgets/ActionItem;

.field public static final enum ACTION_DELETE:Lcom/youku/gamecenter/widgets/ActionItem;

.field public static final enum ACTION_INFO:Lcom/youku/gamecenter/widgets/ActionItem;

.field public static final enum ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;


# instance fields
.field public iconId:I

.field public titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/youku/gamecenter/widgets/ActionItem;

    const-string v1, "ACTION_INFO"

    sget v2, Lcom/youku/gamecenter/R$string;->str_info:I

    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_popupwindow_icon_info:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/youku/gamecenter/widgets/ActionItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_INFO:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 10
    new-instance v0, Lcom/youku/gamecenter/widgets/ActionItem;

    const-string v1, "ACTION_DELETE"

    sget v2, Lcom/youku/gamecenter/R$string;->str_delete:I

    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_popupwindow_icon_delete:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/youku/gamecenter/widgets/ActionItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_DELETE:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 13
    new-instance v0, Lcom/youku/gamecenter/widgets/ActionItem;

    const-string v1, "ACTION_CANCEL"

    sget v2, Lcom/youku/gamecenter/R$string;->str_cancel:I

    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_popupwindow_icon_cancel:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/youku/gamecenter/widgets/ActionItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_CANCEL:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 16
    new-instance v0, Lcom/youku/gamecenter/widgets/ActionItem;

    const-string v1, "ACTION_UNINSTALL"

    sget v2, Lcom/youku/gamecenter/R$string;->str_uninstall:I

    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_popupwindow_icon_uninstall:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/youku/gamecenter/widgets/ActionItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/gamecenter/widgets/ActionItem;

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_INFO:Lcom/youku/gamecenter/widgets/ActionItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_DELETE:Lcom/youku/gamecenter/widgets/ActionItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_CANCEL:Lcom/youku/gamecenter/widgets/ActionItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->$VALUES:[Lcom/youku/gamecenter/widgets/ActionItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "titleId"    # I
    .param p4, "iconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p4, p0, Lcom/youku/gamecenter/widgets/ActionItem;->iconId:I

    .line 24
    iput p3, p0, Lcom/youku/gamecenter/widgets/ActionItem;->titleId:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/gamecenter/widgets/ActionItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/ActionItem;

    return-object v0
.end method

.method public static values()[Lcom/youku/gamecenter/widgets/ActionItem;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->$VALUES:[Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-virtual {v0}, [Lcom/youku/gamecenter/widgets/ActionItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/gamecenter/widgets/ActionItem;

    return-object v0
.end method
