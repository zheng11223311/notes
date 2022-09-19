.class public Lnet/iab/exception/InvalidDocumentException;
.super Lnet/iab/exception/IABException;


# static fields
.field private static final serialVersionUID:J = -0x3192ad371e25f59aL


# instance fields
.field private mExpected:[Ljava/lang/String;

.field private mFound:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/iab/exception/IABException;-><init>()V

    iput-object p1, p0, Lnet/iab/exception/InvalidDocumentException;->mFound:Ljava/lang/String;

    iput-object p2, p0, Lnet/iab/exception/InvalidDocumentException;->mExpected:[Ljava/lang/String;

    return-void
.end method
