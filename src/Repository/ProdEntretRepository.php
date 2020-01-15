<?php

namespace App\Repository;

use Doctrine\ORM\Query;
use App\Entity\ProdEntret;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @method ProdEntret|null find($id, $lockMode = null, $lockVersion = null)
 * @method ProdEntret|null findOneBy(array $criteria, array $orderBy = null)
 * @method ProdEntret[]    findAll()
 * @method ProdEntret[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProdEntretRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ProdEntret::class);
    }
    public function findPagination() : Query{
        return $this->createQueryBuilder('v')
                      ->getQuery();
    }
    // /**
    //  * @return ProdEntret[] Returns an array of ProdEntret objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ProdEntret
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}