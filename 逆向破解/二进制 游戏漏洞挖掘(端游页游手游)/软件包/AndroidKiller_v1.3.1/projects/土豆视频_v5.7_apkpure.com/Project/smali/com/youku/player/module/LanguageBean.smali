.class public Lcom/youku/player/module/LanguageBean;
.super Ljava/lang/Object;
.source "LanguageBean.java"


# instance fields
.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lanid"    # I
    .param p2, "lanCode"    # Ljava/lang/String;
    .param p3, "lanDesc"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/youku/player/module/LanguageBean;->id:I

    .line 21
    iput-object p2, p0, Lcom/youku/player/module/LanguageBean;->code:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/youku/player/module/LanguageBean;->desc:Ljava/lang/String;

    .line 23
    return-void
.end method
