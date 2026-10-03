.class public final Lj3/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/f$c<",
        "Lj3/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Lj3/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/n$a;

    invoke-direct {v0}, Lj3/n$a;-><init>()V

    sput-object v0, Lj3/n$a;->c:Lj3/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
