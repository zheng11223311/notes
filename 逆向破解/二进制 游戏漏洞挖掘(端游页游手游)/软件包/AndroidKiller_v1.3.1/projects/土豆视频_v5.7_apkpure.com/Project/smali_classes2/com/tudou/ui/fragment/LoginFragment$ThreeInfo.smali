.class Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;
.super Ljava/lang/Object;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreeInfo"
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:Ljava/lang/String;

.field public openid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/ui/fragment/LoginFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/ui/fragment/LoginFragment$1;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;-><init>()V

    return-void
.end method
